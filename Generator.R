library(tidyverse)

## Set the seed
SE


ED <- 1
set.seed(SEED)

## Set the total population size
TOTPOP <- 17643054

## Generate positive normal distribution
posrnorm <- function(n, m, sd){
        x <- c()
        r <- 0
        repeat{
                x <- rnorm(n, m, sd)
                r <- r + 1
                if(r > 1000){
                        message("Attempt to find distribution with only positive values stopped after 1000 repetitions.")
                        break}
                if(all(x>0)){
                        return(x)
                        break}}}

## OPTIONAL: generate the subpopulation sizes

        ## OPTION 1: subpopulation size is assumed to be normally         distributed. 
SUBNUM <- 224 
MEAN <- TOTPOP/SUBNUM
SD <- 20000
        
x <- data.frame(value = posrnorm(n = SUBNUM, m = MEAN, sd = SD))

        ## OPTION 2: sub population size is assumed to be skewed.         A beta-distribution is plausibly a good option to                 approximate the data. 
alpha = 5
beta = 1
x <- data.frame(value = rbeta(240, alpha, beta))

        ## Computation of subpopulation sizes
x <- x%>%
        mutate(tot = sum(value)) %>%
        mutate(prop = value/tot) %>%
        mutate(population = round(prop * TOTPOP)) %>%
        select(population) %>%
        rowid_to_column(var = "ID")

