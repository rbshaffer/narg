# Introduction

Welcome! This is the course page for the **Network Analysis Reading Group** (NARG). You can find the course materials, syllabus, and other useful links and information here. We'll update this repository as needed throughout the semester, so be sure to check back regularly.

## Philosophy
This reading group is participant-organized and taught, and it'll succeed (or fail) based on participant input and effort. As a result, we're expecting everyone to come prepared, to participate, and to complete the readings for each week. Some parts of the semester are busier than others, and if you can't make a meeting or two, it's not the end of the world. But, if you decide to participate, please view this reading group as a semester-long commitment!

## Format
Each meeting will be led by one participant, who will begin with a lightning talk on their topic. Next, we'll discuss the week's papers as a group, and identify sources of confusion, potential applications, and critiques. Finally, the week's leader will present an applied example based on the week's topic. 

## Logistics
Meetings once per week (times/dates TBD) for one hour. Based on demand and material, we may hold an optional half-hour mathematics section some weeks, in which more mathematically inclined participants can dive into the details of the week's concepts.

# Duties
## Leaders
1. Select the week's applied paper and applied example.
  * Course organizers will give suggestions, but the leader will be responsible for selecting among them.
  * Leaders should send their materials to the organizers **at least two days before the week's session**, to give others time to look them over.
2. Give a brief lightning talk on the week's topic.
  * Lightning talks should be about **5 minutes long**, with about **3-5 slides**.
  * The talk should introduce the topic, its significance, and the week's application.
3. Walk the group through the week's applied example.
  * The application section should be about **10-15 minutes** long, and should contain a **live demonstration** (e.g. R/Python code, standalone software environment).
  * Applications should be accompanied with **documentation**, so others can follow along.
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
* [Easley, David, and Jon Kleinberg. *Networks, Crowds, and Markets: Reasoning About a Highly Connected World.* Cambridge University Press, 2010.]{http://www.cs.cornell.edu/home/kleinber/networks-book/}
* [Hanneman, Robert A. and Mark Riddle.  2005.  Introduction to Social Network Methods.  Riverside, CA:  University of California, Riverside]{Hanneman, Robert A. and Mark Riddle.  2005.  Introduction to social network methods.  Riverside, CA:  University of California, Riverside}
  
# List of topics
Required readings are given in bullets below each topic heading. Check back regularly for updates!
* Introduction
  1. Motivation, terminology, and data formats.
   * [Borgatti (2009)]{https://github.com/rbshaffer/narg/blob/master/resources/Week_1/Borgatti_2009.pdf}, [Wasserman and Faust, Chapter 1]{https://github.com/rbshaffer/narg/blob/master/resources/Week_1/Wasserman_Faust_Part1.pdf}
  2. Types of networks.
  3. Visualizing and describing network data.
* Node and network properties
  4. Node centrality and popularity.
  5. Node power.
  6. Network balance and transitivity.
  7. Trees and structural equivalence.
  8. Community detection and local structures (i.e. triad analysis)
* Effects of networks
  9. Diffusion.
  10. Mutual support.
* Inference
  11. Exponential random graph models.
  12. Latent space network models.
  13. Quadratic assignment procedure.
  14. Logistic regression (p*).
  
# Software
As a general rule, many software packages will work more easily with Unix-like operating systems (OSX; Linux) than with Windows. Check the documentation and requirements for each package carefully if you encounter issues!

* R
 * [igraph](http://igraph.org/r/)
 * [spnet](http://emmanuel.rousseaux.me/r-package-spnet)
 * [ggnet2](https://briatte.github.io/ggnet/)
* Python
 * [NetworkX](https://networkx.readthedocs.io/en/stable)
 * [graph-tool](https://graph-tool.skewed.de/)
