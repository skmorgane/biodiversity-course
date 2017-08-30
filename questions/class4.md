---
layout: nil
title: Class 9 Questions
---

#### Questions for Jost: Partitioning diversity into independent alpha and beta components
* Reread the example in the beginning about comparing the diversity of the communities in Antartica. 
    * What aspect of alpha diversity is Jost thinking about that Kraft et al aren't?
* Why do you think Jost does this?
* Reread the section on Numbers Equivalents. 
    * Why do you think there are so many different forms of diversity indices to quantify the same thing?

#### Questions for Petchey and Gaston: Functional diversity (FD), species richness and community composition
* Think about a community of species. Each species has a measurable trait (i.e. metabolic rate, bill length, leaf surface area, envision whatever is most comfortable to you). How would you apply the diversity indices in Jost to quantifying the diversity of that functional trait? Can you?
* To explore the approach discussed in Petchey and Gaston, we'll work through a really trivial toy example. After reading the Intro and Methods, see if you can do the following:
     We have a 5 species community and 1 trait (a length measurement of some sort. You can think of it as whatever length measurement might apply to you taxon of choice
     Species A: 5 units
     Species B: 6 units
     Species C: 12 units
     Species D: 13 units
     Species E: 35 units
     
     A. Make the S matrix
     B. Make the D matrix (for your distance metric, just take the absolute value of the difference between two species).
     C. Let's assume when we put your D matrix through the clustering algorithm and you get the dendrogram below. Use your intuition to place each of the species on this dendrogram
     
---
                                                      |
                                                      |
                                _____________________________________________
                                |                                            |
                                |                                            |
                        ________________                                     |
                        |              |                                     |
                        |              |                                     |
                    _________       _______                                  |
                    |       |       |     |                                  |
		   
---

D. Assume each individual vertical bar equals a branch length of 5. (i.e. a vertical line consisting of 2 vertical bars = 10). WHat is the functional diversity of this community?
 
* Examine figure 2. Petchey and Owen run simulations where they change the shape of the dendrogram.
     * What does changing the shape of the dendrogram represent?
     * What effect does this have on the relationship between functional diversity and the number of species in your community?

