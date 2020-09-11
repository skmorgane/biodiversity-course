---
layout: nil
title: Phylogenetic and Taxonomic Diversity
---

#### Questions for Wong et al: Comparing patterns of taxonomic, functional and phylogenetic diversity in reef coral communities
##### Read only the introduction, stopping at the paragraph: "Despite the importance of coral reefs"
* Why isn't it enough to just study taxonomic diversity?
* What is functional diversity?
* What is phylogenetic diversity?

#### Questions for Petchey and Gaston: Functional Diversity (FD), species richness and community composition

The most important part of this paper is understanding the method. This is method is often strange to many people and all the matrix notation can be intimidating. We will work through this method in class, but it is SUPER important that you read it in advance and make note of what you don't understand, so you can make sure you get that info from me! Phylogenetic diversity is calculated nearly identically, so if we understand this paper, we understand how both phylogenetic and functional diversity are being quantified in the scientific literature these days! The exercise below is meant to help you figure out what you don't understand. We'll walk through it in class.

* To explore the approach discussed in Petchey and Gaston, we'll work through a really trivial toy example. After reading the Intro and and the Calculating FD section in the Methods, see if you can do the following:
     We have a 5 species community and 1 trait (a length measurement of some sort. You can think of it as whatever length measurement might apply to you taxon of choice
     Species A: 10 units
     Species B: 11 units
     Species C: 13 units
     Species D: 13.5 units
     
     
    A. Make the S matrix
    
    B. Make the D matrix (for your distance metric, just take the absolute value of the difference between two species).
     
    C. Let's assume when we put your D matrix through the clustering algorithm (we'll talk in class about how these work sincePetchey and Gaston don't go into much detail here) and you get the dendrogram below. Use your intuition to place each of the species on this dendrogram
     
---
                                                      |
                                                      |
                                _____________________________________________
                                |                                            |
                                |                                            |
                        ________________                                     |
                        |              |                              ______________
			    |              |                             |              |         
		   
---

   D. Assume each individual vertical bar equals a branch length of 5. (i.e. a vertical line consisting of 2 vertical bars = 10). What is the functional diversity of this community?
   
   E. Given what you know about phylogenies how would you apply this to measure phylogenetic diversity?

Optional: The rest of the paper. The simulations they discuss next in the paper provide useful information about how the structure of the tree can influence the relationship between increasing species richness and increasing phylogenetic diversity. I'd rather you spent your time working on understanding the method, but if you think you got that, you can explore this fun aspect.

* Examine figure 2. Petchey and Owen run simulations where they change the shape of the dendrogram.
     * What does changing the shape of the dendrogram represent?
     * What effect does this have on the relationship between functional diversity and the number of species in your community?

* Think about this approach and compare to what was done in the Kraft et al. paper
from last week. Think a little bit about how you would apply the Petchey and Gaston method to calculate alpha, beta, and/or gamma diversity.

