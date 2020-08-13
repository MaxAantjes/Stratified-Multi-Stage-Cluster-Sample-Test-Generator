library(tidyverse)

## Set the seed
SEED <- 1
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

## OPTIONAL: generate the subpopulation size, subpopulation size is assumed to be normally distributed. 
SUBNUM <- 224 
MEAN <- TOTPOP/SUBNUM
SD <- 20000
        
x <- data.frame(value = posrnorm(n = SUBNUM, m = MEAN, sd = SD))
x <- x%>%
        mutate(tot = sum(value)) %>%
        mutate(prop = value/tot) %>%
        mutate(population = round(prop * TOTPOP)) %>%
        select(population)

## OPTIONAL: generate the subpopulation size, subpopulation size is assumed to be right-skewed. The level of skewed-ness can be altered by changing the SKEW scale from 0 (most extreme skewdness) to 5 (approaching a normal distribution). 
SKEW <- 1

x <- data.frame(value = rbeta(240, 1, 5))
x <- x%>%
        mutate(tot = sum(value)) %>%
        mutate(prop = value/tot) %>%
        mutate(population = round(prop * TOTPOP)) %>%
        select(population)

## Generator

generator <- function(seed = SEED, size = SIZE) {
        set.seed(seed)}