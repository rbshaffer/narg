rm(list=ls())

# on linux: sudo apt-get install r-cran-rjava to get Rcpp, JDK working (needed for these libraries)
library(igraph)
library(stringr)
library(openxlsx)

# modify your path as appropriate
# note that this a slow/inefficient function - CSV or similar format would be better
data <- read.xlsx("/home/rbshaffer/Downloads/globalterrorismdb_0616dist.xlsx")

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

# collapsing the two-mode terrorism network to two one-mode networks
bp_terror_adj <- t(as_incidence_matrix(igraph_obj))  %*% (as_incidence_matrix(igraph_obj))
bp_country_adj <- (as_incidence_matrix(igraph_obj))  %*% t(as_incidence_matrix(igraph_obj))

# generate a version with the diagonals zeroed out (for visual purposes) and one without
bp_terror_nodiag <- bp_terror_adj
bp_country_nodiag <- bp_country_adj
diag(bp_terror_nodiag) <- 0
diag(bp_country_nodiag) <- 0

bp_terror <- graph_from_adjacency_matrix(bp_terror_adj, weighted=T)
bp_country <- graph_from_adjacency_matrix(bp_country_adj, weighted=T)

bp_terror_nd <- graph_from_adjacency_matrix(bp_terror_nodiag, weighted=T)
bp_country_nd <- graph_from_adjacency_matrix(bp_country_nodiag, weighted=T)

# normalize weights for visual purposes (no-diagonal graph only)
edge_weight <- 10

E(bp_terror_nd)$weight <- edge_weight*E(bp_terror_nd)$weight/max(E(bp_terror_nd)$weight)
E(bp_country_nd)$weight <- edge_weight*E(bp_country_nd)$weight/max(E(bp_country_nd)$weight)

plot(bp_terror_nd, 
     vertex.size=5, 
     vertex.frame.color='white',
     layout=layout_with_fr(bp_terror),
     margin=-.1,
     edge.width=E(bp_terror)$weight,
     edge.arrow.size=0)

plot(bp_country_nd, 
     vertex.size=5, 
     vertex.frame.color='white',
     layout=layout_with_fr(bp_country),
     margin=-.1,
     edge.width=E(bp_country)$weight,
     edge.arrow.size=0)

ggplot(NULL) + geom_bar(aes(x=names(eigen_centrality(bp_terror)$vector), y=eigen_centrality(bp_terror)$vector), stat='identity') +
  xlab('Centrality') + ylab('Group') + theme_minimal() + theme(axis.text.x=element_text(angle=45, hjust=1))

ggplot(NULL) + geom_bar(aes(x=names(eigen_centrality(bp_country)$vector), y=eigen_centrality(bp_country)$vector), stat='identity') +
  xlab('Centrality') + ylab('Group') + theme_minimal() + theme(axis.text.x=element_text(angle=45, hjust=1))

