# Biodiversity metrics exercise
# Biodiversity: ecological patterns and processes Fall 2017
# Erica Christensen: ericachristensen@ufl.edu

install.packages('dplyr')
library(dplyr)


# ===============================================
# functions

Hill_number = function(data,q){
  # Calculates Hill number -- from eq. 2 in Jost 2007
  # Input: 
  #  data: Data for analysis - counts per species
  #  q: the q-value to be used for the Hill number calculation
  
  total_N = sum(data$count)  # sum total number of individuals
  p_i = data$count/total_N   # calculate relative abundance of each species
  
  # calculate Hill number
  if (q != 1){
    q_D = sum(p_i^q)^(1/(1-q))
  }
  else {
    q_D = exp(-(sum(p_i*log(p_i))))
  }
  # return result
  return(q_D)
}

weighted_alpha = function(D_allplots,q) {
  # Calculate weighted alpha -- adapted from eq. 11a and 11b in Jost 2007
  # Input:
  #   D_allplots: data frame with columns for plot, q_D (hill numbers), and total_N (total abundance per plot)
  
  # calculate weights of each plot: abund at plot/regional abund
  w = D_allplots$total_N/sum(D_allplots$total_N)
  # calculate weighted alpha
  if (q != 1) {
    q_D_alpha = (sum(w^q*D_allplots$q_D^(1-q))/sum(w^q))^(1/(1-q))
  }
  else {
    q_D_alpha = exp(sum(w*log(D_allplots$q_D)))
  }
  return(q_D_alpha)
}

# ================================================
# Diversity metrics - alpha, beta, gamma

# rodent data
dat = read.csv("rodent_counts.csv", stringsAsFactors = FALSE)
head(dat)
