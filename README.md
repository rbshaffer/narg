# Introduction

Welcome! This is the course page for the **Network Analysis Reading Group** (NARG), organized by [Robert Shaffer](https://rbshaffer.github.io/) and [Zac McGee](http://www.zacharymcgee.net/). You can find the course materials, syllabus, and other useful links and information here. We'll update this repository as needed throughout the semester, so be sure to check back regularly.

## Philosophy
This reading group is participant-organized and taught, and it'll succeed (or fail) based on participant input and effort. As a result, we're expecting everyone to come prepared, to participate, and to complete the readings for each week. Some parts of the semester are busier than others, and if you can't make a meeting or two, it's not the end of the world. But, if you decide to participate, please view this reading group as a semester-long commitment!

## Format
Each meeting will be led by one participant, who will begin with a lightning talk on their topic. Next, we'll discuss the week's papers as a group, and identify sources of confusion, potential applications, and critiques. Finally, the week's leader will present an applied example based on the week's topic. If course demand is high enough, two participants may split leadership duties.

## Logistics
Meetings once per week, Thursdays 2-3pm. Most meetings will be in the Glickman Conference Center (CLA 1.302D), though a few meetings may need to be moved or rescheduled based on room availability. Based on demand and material, we may hold an optional half-hour mathematics section some weeks, in which more mathematically inclined participants can dive into the details of the week's concepts.

# Duties
## Leaders
1. Select the week's applied paper and applied example.
  * Course organizers will suggest papers for each week, but the week's leader should feel free to select something different.
  * Leaders should send their materials to the organizers **at least one week in advance**, to give others time to look them over.
2. Give a brief lightning talk on the week's topic.
  * Lightning talks should be about 5 minutes long, with no more than 5 slides.
  * The talk should introduce the topic, its significance, and the week's application.
3. Walk the group through the week's applied example.
  * The application section should be about 10-15 minutes long, and should contain a live demonstration (e.g. R/Python code, standalone software environment).
  * Applications should be accompanied with documentation, so others can follow along.
  * We strongly encourage leaders to develop their own examples, rather than taking examples from elsewhere on the web. We'll all learn more by presenting and inspecting our own code!


Weekly leaders are not expected to be experts on their topic, but should be knowledgable about their assigned material and the applied example they prepare. Prepare for your week as session leader with the same level of care that you'd prepare for a seminar course meeting, and you'll be in good shape.
  
## Participants
1. Prepare
  * Show up each week.
  * Do the week's reading, and skim the week's applied example.
  * Try to look over a few of the supplementary resources.
2. Participate
  * Speak up during the group meeting. We're all learning this material together, so if you're confused, others are likely confused as well.
  * If you know of any useful outside materials, suggest them to the organizers so we can add them to this repository!
  
# Textbooks
For participants wishing to do some outside reading on their own, one or more of these textbooks may be helpful. Hyperlinks are included for texts that are available online. 
* Wasserman, Stanley, and Katherine Faust. *Social Network Analysis: Methods and Applications.* Cambridge University Press, 1994.
* Wellman, Barry, and Stephen D. Berkowitz. *Social Structures: A Network Approach.* Cambridge University Press, 1988.
* Scott, John, and Peter J. Carrington. *The SAGE Handbook of Social Network Analysis.* SAGE Publications, 2011.
* [Easley, David, and Jon Kleinberg. *Networks, Crowds, and Markets: Reasoning About a Highly Connected World.* Cambridge University Press, 2010.](http://www.cs.cornell.edu/home/kleinber/networks-book/)
* [Hanneman, Robert A. and Mark Riddle. 2005. *Introduction to Social Network Methods*. Riverside, CA: University of California, Riverside.](http://www.faculty.ucr.edu/~hanneman/nettext/)
  
# List of topics
Weekly leaders and required readings are given in parentheticals following each topic heading. See each week's folder in the [resources](https://github.com/rbshaffer/narg/tree/master/resources) section for additional resources. Topic dates are approximate, and may be shifted depending on demand and scheduling.

* Introduction
  - *1/19:* Motivation and course overview (Robert Shaffer; [McClurg 2014](https://github.com/rbshaffer/narg/blob/master/resources/01/McClurg_2014.pdf), [Borgatti 2009](https://github.com/rbshaffer/narg/blob/master/resources/01/Borgatti_2009.pdf)).
  - *1/26:* Terminology and data formats (Zac McGee; [Wasserman and Faust, Chapter 1 - especially p. 17-22; 28-31; and 35-44](https://github.com/rbshaffer/narg/blob/master/resources/02/Wasserman_Faust_Part1.pdf), [Porter et al. 2005](https://github.com/rbshaffer/narg/blob/master/resources/03/Porter_2005.pdf)).
  - *2/9:* Conceptualization and measurement (E.J. Fagan; [Koger, Masket and Noel 2010](https://github.com/rbshaffer/narg/blob/master/resources/04/Koger%2C%20Masket%2C%20Noel_2010_Cooperative%20Party%20Factions%20in%20American%20Politics.pdf); [Hawe et al. 2004](https://github.com/rbshaffer/narg/blob/master/resources/04/Hawe%2C%20Webster%2C%20Shiell_2004_A%20glossary%20of%20terms%20for%20navigating%20the%20field%20of%20social%20network%20analysis.pdf)).
  - *2/16:* Visualization (Siyun Jiang; [Ognyanova 2015](https://github.com/rbshaffer/narg/blob/master/resources/software_guides/Ognyanova_2015.pdf); [Battista 1994](https://github.com/rbshaffer/narg/blob/master/resources/04/Battista_1994.pdf); [Hanneman 2005](http://faculty.ucr.edu/~hanneman/nettext/C4_netdraw.html))
* Node and network properties
  - *2/23:* Node centrality and popularity (Mike Denly; [Fowler et al. 2007](https://github.com/rbshaffer/narg/blob/master/resources/05/Fowler_2007.pdf)).
  - *3/2:* Network balance and transitivity (Maraam Dwidar; [Cartwright 1956](https://github.com/rbshaffer/narg/blob/master/resources/06/Cartwright_1956.pdf); [Faust 2002](https://github.com/rbshaffer/narg/blob/master/resources/06/Faust_2002.pdf)).
  - *3/9:* Community detection and local structures (i.e. triad analysis) (Ross Buchanan; [Newman 2006](https://github.com/rbshaffer/narg/blob/master/resources/07/Newman_2006.pdf), skim [Opsahl 2009](https://github.com/rbshaffer/narg/blob/master/resources/07/Opsahl_2009.pdf)).
* Effects of networks
  - *3/23:* Diffusion (Ross Buchanan;  [Morris 1993](https://github.com/rbshaffer/narg/blob/master/resources/08/Morris_1993.pdf); [Rhue 2014](https://github.com/rbshaffer/narg/blob/master/resources/08/Rhue_2014.pdf)).
  - *3/30:* Mutual support (Michael Gibbs; [Wellman 1990](https://github.com/rbshaffer/narg/blob/master/resources/09/Wellman_1990.pdf)).
* Inference (General introduction: [Cranmer et al. 2016](https://github.com/rbshaffer/narg/blob/master/resources/10/Cranmer_2016.pdf))
  - *4/13:* Exponential random graph models (Zac McGee; [Robins et al. 2007](https://github.com/rbshaffer/narg/blob/master/resources/10/Robins_2007.pdf); [Box-Steffensmeier and Christenson 2014](https://github.com/rbshaffer/narg/blob/master/resources/10/Box-Steffensmeier_2014.pdf)).
  - *4/20:* Quadratic assignment procedure.
  - *4/27:* Logistic regression (p*).
  
# Software
As a general rule, many software packages will work more easily with Unix-like operating systems (OSX; Linux) than with Windows. Check the documentation and requirements for each package carefully if you encounter issues!

* R
 * [igraph](http://igraph.org/r/)
 * [spnet](http://emmanuel.rousseaux.me/r-package-spnet)
 * [ggnet2](https://briatte.github.io/ggnet/)
 * [sna](https://cran.r-project.org/web/packages/sna/sna.pdf)
* Python
 * [NetworkX](https://networkx.readthedocs.io/en/stable)
 * [graph-tool](https://graph-tool.skewed.de/)
