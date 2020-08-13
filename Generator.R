library(tidyverse)

## Set the seed
SEED <- 1

## Set the total population size
TOTPOP <- 1000000

## OPTIONAL: generate the subpopulation size, subpopulation size is assumed to be normally distributed. 
SUBNUMBER <- 240 
        
x <- data.frame(rnorm(SUBNUMBER, 100, 30))
names(x) <- "value"
x <- x%>%
        mutate(tot = sum(value)) %>%
        mutate(prop = value/tot) %>%
        mutate(population = prop * SIZE) %>%
        mutate(test = sum(population))

generator <- function(seed = SEED, size = SIZE) {
        set.seed(seed)
        }