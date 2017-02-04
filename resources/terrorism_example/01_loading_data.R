rm(list=ls())

# on linux: sudo apt-get install r-cran-rjava to get Rcpp, JDK working (needed for these libraries)
library(igraph)
library(stringr)
library(openxlsx)

# modify your path as appropriate
# note that this a slow/inefficient function - CSV or similar format would be better
data <- read.xlsx("/home/rbshaffer/Downloads/globalterrorismdb_0616dist.xlsx")

# creating a small sample visualization
sample_edgelist <- as.matrix(head(data[,c('gname', 'country_txt')]), ncol=2)
sample_graph_obj <- graph_from_edgelist(sample_edgelist)
plot.igraph(sample_graph_obj)

# visualize attacks from top N groups
n <- 25

ordered <- unique(data$gname)
prevalence <- sapply(ordered, function(x){sum(data$gname == x)})
ordered <- ordered[order(prevalence, decreasing = T)]
edgelist <- as.matrix(data[data$gname %in% ordered[2:(n+1)],c('gname', 'country_txt')])

edgelist <- edgelist[!edgelist[,1] %in% c('Unaffiliated Individual(s)'),]

# shorten some names
to_shorten <- grep('\\(', edgelist[,1])
edgelist[to_shorten, 1] <- str_match(edgelist[to_shorten, 1], '\\(([-A-Za-z0-9 ]+)\\)')[,2]

# collapse to a weighted graph of unique entries (could imagine separating by year, decade, etc)
weighted_edges <- unique(edgelist)
igraph_obj <- graph_from_edgelist(weighted_edges, directed=F)

# add a few attributes
V(igraph_obj)$type <- V(igraph_obj)$name %in% edgelist[,1]
E(igraph_obj)$weight <- apply(weighted_edges, 1, function(x){sum(edgelist == x)})

# setting the edge weight for visual purposes (10 seemed good here)
edge_weight <- 10
E(igraph_obj)$weight <- edge_weight*E(igraph_obj)$weight/max(E(igraph_obj)$weight)

# plot, with some graphical parameters modified for legibility
plot.igraph(igraph_obj, 
            vertex.size=5, 
            vertex.frame.color='white',  
            vertex.color=ifelse(V(igraph_obj)$type == 1, 'lightgreen', 'lightblue'),
            edge.width=E(igraph_obj)$weight,
            layout=layout_with_fr(igraph_obj),
            margin=-.3)
