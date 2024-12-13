library(ggplot2)

#READING IN DATA:

DS_DNA_data <- read.csv("Cui_etal2014.csv")

#LOOKING AT TABLE STRUCTURE:

nrow(DS_DNA_data) #The Number of rows is 33.
ncol(DS_DNA_data) #The number of columns is 13.

#WORKING OUT THE TRANSFORMATIONS:

#Plot created to help visualise what sort of transformation is most appropriate for
#fitting a linear model to the data
ggplot(data = DS_DNA_data, aes(y = log(Virion.volume..nm.nm.nm.), 
                               x = log(Genome.length..kb.))) +
  geom_point()

#A Log transformation is best for fitting data to a linear model.

linear_model <- lm( log(Virion.volume..nm.nm.nm.) ~ log(Genome.length..kb.), DS_DNA_data)
summary(linear_model)

#CALCULATING CONSTANTS OF THE ALLOMETRIC EQUATION

#y = mx+c maps onto the allometric equation as Y = cX^m, therefore in the linear 
#model, Virion volume maps to Y, Genome Length maps to X, the intercept (c) maps to 
#the scaling factor and gradient(m) maps onto the exponent. 

#To extract the scaling factor I found the exponential of the value given under 
#intercept in the summary of the linear model. The exponential was taken rather 
#then the raw number due to the log transformation applied to the data in order 
#to fir the linear model.

alpha <- exp(7.0748) 
beta <- 1.5152  

#The exponent factor is the gradient of the linear model as given in the summary. 

#Based on my model the values of the constants are ...
# scaling factor = 1181.807
# exponent = 1.5152 

#These are almost exactly the same as the values given in table 2 of (Cuiz, et. al., 2014)
#for dsDNA which are 1182 and 1.52 respectively.

#REPRODUCING THE FIGURE:

ggplot(data = DS_DNA_data, aes(y = log(Virion.volume..nm.nm.nm.), 
                               x = log(Genome.length..kb.))) +
  geom_point() +
  labs(y = "log [Virion Volume (nm3)", x = "log [Genome length (kb)]") +
  geom_smooth(method = "lm", formula = y~x) +
  theme_light() +
  theme(axis.title.x = element_text(face = "bold"), axis.title.y = element_text(face= "bold"))

#ESTIMATING THE VOLUME 

Allometric_equation <- function(L) {
  V <- alpha*L^beta
  return(V)
}

Allometric_equation(300)
#The estimated volume of a dsDNA virus is 6697007 nm3