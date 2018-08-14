# Biodiversity metrics exercise
# Biodiversity: ecological patterns and processes Fall 2017


#install.packages('dplyr')
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

# look at Hill number for a specific plot; 
#          plot 14 is pretty even, how do q=0 and q=1 differ? 
#          plot 22 is very uneven, how do q=0 and q=1 differ?
plot14 = filter(dat,plot==14)
plot14
Hill_number(plot14,q=1.5)

plot22 = filter(dat,plot==22)
plot22
Hill_number(plot22,q=1.5)

# calculate q_D for each plot
plots = unique(dat$plot)
q = 1

D_allplots = data.frame()
for (plt in plots) {
  dat_subset = filter(dat,plot==plt)
  Hill = Hill_number(dat_subset,q)
  total_N = sum(dat_subset$count)
  D_allplots = rbind(D_allplots,c(plt,Hill,total_N))
}

D_allplots
names(D_allplots)=c('plot','q_D','total_N')
D_allplots

# calculate 'average' alpha
q_D_alpha = weighted_alpha(D_allplots,q)
q_D_alpha
mean(D_allplots$q_D)

# calculate gamma -- the Hill number of the site as a total
site_dat = aggregate(dat$count,by=list(species=dat$species),FUN=sum)
names(site_dat) = c('species','count')
site_dat
q_D_gamma = Hill_number(site_dat,q)
q_D_gamma

# calculate beta
q_D_beta = q_D_gamma/q_D_alpha
q_D_beta

# ==================================
# Do this with plant data
plants = read.csv('Portal_plants.csv',stringsAsFactors = F)
head(plants)
