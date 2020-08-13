# Introduction
This repository aims to provide a tool which allows statisticians to test statistical methods for Small Area Estimates (SAE) from national surveys with a complex sampling design. It does so by performing the following functions: (i) it generates population data which mimics real national population data; and (ii) it takes a sample from the population data using a complex sampling design. After performing these functions, the user of the tool can apply the statistical method(s) of choice on the sample and then compare the results with the actual population data. The difference between the sample statistics and population parameters then provide an indication of the accuracy of the statistical method(s) used. The two functions of the tool are described in more detail below.

# Function 1: Generation of population data 
The accuracy and validity of different statistical methods may depend on a variety of factors. Here is a **non-exhaustive** list: 

* the types of the Variables of Interest (VI), e.g. categorical or numerical;  
* the correlation across the VIs;  
* the shape of the underlying distribution of the VIs, e.g. normal or poisson;  
* the population size;  
* the variation within each VI;  
* the hierarchical variation within each VI, e.g. the variation between rural and urban households in terms of internet connectivity.  

Accordingly, a tool for testing statistical methods must be **responsive** to each of these considerations. This means there is no point in generating purely random population data. Rather, statisticians should be given the option to generate population data which closely mimics the **real life** population data of interest. An additional consideration is that the generation of data needs to be reproducible. This can be achieved as follows:  

1. Users can set the seed;
2. Users can set the population size at national level;
3. Users can set or generate the population number of each small area of interest; 
4. Users can set the expected heterogeniety across small areas of interest; 
5. Users can set the number of variables to be generated;  
6. Users can then set for each variable:  

  * the type; 
  * the underlying shape of the distribution;
  * the standard deviation;  
  * the mean;  
  * the minimum and maximum.
  
Users are advised to use census data to estimate these parameters. Alternatively, standard parameters will be used. If no paramater specifications are provided, the user will be informed through warning messages. 

# Function 2: Selection of sample from population data
