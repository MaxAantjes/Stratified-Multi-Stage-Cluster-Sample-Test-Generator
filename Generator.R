library(tidyverse)

## Set the seed
SEED <- 1

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

## OPTIONAL: generate the subpopulation size, subpopulation size is assumed to be normally distributed. 
SUBNUM <- 224 
MEAN <- TOTPOP/SUBNUM
SD <- 1
        
x <- data.frame(value = posrnorm(n = SUBNUMBER, m = MEAN, sd = 2000))
x <- x%>%
        mutate(tot = sum(value)) %>%
        mutate(prop = value/tot) %>%
        mutate(population = round(prop * SIZE)) %>%
        select(population)

generator <- function(seed = SEED, size = SIZE) {
        set.seed(seed)
        }