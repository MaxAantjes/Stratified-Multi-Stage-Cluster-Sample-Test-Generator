# Introduction
This repository aims to provide a tool which allows statisticians to test statistical methods for Small Area Estimates (SAEs) from national surveys with a complex sampling design. It does so by performing the following functions: (i) it generates population data which mimics real national population data; and (ii) it takes a sample from the population data using a complex sampling design. After performing these functions, the user of the tool can apply the statistical method(s) of choice on the sample and then compare the results with the generated population data. The difference between the sample statistics and population parameters provide an indication of the accuracy of the statistical method(s) used. The two functions of the tool are described in more detail below.

# Function 1: Generation of population data 
The accuracy and validity of different statistical methods may depend on a variety of factors. Here is a **non-exhaustive** list: 

* the size of the total population and sub-populations;  
* the variation within sub-populations and the variation between sub-populations;  
* the number and types of the Variables of Interest (VIs), e.g. categorical or numerical;  
* the variation within VIs and the correlation between VIs;  
* the shape of the underlying distribution of the VIs, e.g. normal or poisson;    
* the hierarchical variation within each VI, e.g. the variation between rural and urban households in terms of internet connectivity.  

Accordingly, a tool for testing statistical methods must be **responsive** to each of these considerations. This means there is no point in generating purely random population data. Rather, statisticians should be given the option to generate population data which closely mimics the **real life** population data of interest. An additional consideration is that the generation of data needs to be reproducible. This can be achieved as follows:  

1. Users can set the seed;
2. Users can set the size of the total population and sub-pouplations;
4. Users can set the expected variation within and between sub-populations;
5. Users can set the number of variables to be generated;  
6. Users can then set for each variable:  

  * the type; 
  * the underlying shape of the distribution;
  * the standard deviation;  
  * the mean;  
  * the minimum and maximum.
  
Users are advised to use census data to estimate these parameters. Alternatively, standard parameters will be used. If no paramater specifications are provided, the user will be informed of this through warning messages. 

# Function 2: Selection of sample from population data
