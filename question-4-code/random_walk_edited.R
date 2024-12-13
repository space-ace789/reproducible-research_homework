#install.packages("ggplot2")
#install.packages("gridExtra")

library(ggplot2)
library(gridExtra)

random_walk  <- function (n_steps) {
  df <- data.frame(x = rep(NA, n_steps), y = rep(NA, n_steps), time = 1:n_steps)
  df[1,] <- c(0,0,1)
  for (i in 2:n_steps) {
    h <- 0.25
    angle <- runif(1, min = 0, max = 2*pi)
    df[i,1] <- df[i-1,1] + cos(angle)*h
    df[i,2] <- df[i-1,2] + sin(angle)*h
    df[i,3] <- i
    }
  return(df)
}

data1 <- random_walk(500)

plot1 <- ggplot(aes(x = x, y = y), data = data1) +
  geom_path(aes(colour = time)) +
  theme_bw() +
  xlab("x-coordinate") +
  ylab("y-coordinate")

data2 <- random_walk(500)

plot2 <- ggplot(aes(x = x, y = y), data = data2) +
  geom_path(aes(colour = time)) +
  theme_bw() +
  xlab("x-coordinate") +
  ylab("y-coordinate")

grid.arrange(plot1, plot2, ncol=2)

#MODELLING BROWNIAN MOTION

#Inputs
n_sims <- 100
steps <- 500


#Brownian Motion of the x coordinates:

random_walk_xcoords <- matrix(ncol = n_sims, nrow = steps)

  for (i in 1:n_sims) {
    random_walk_xcoords[,i] <- random_walk(steps)$x  
  }
#This code generates a matrix of randomly generated x coordinates, as produced
#by the random walk function. Each new column in the matrix is a different simulation
#and each row corresponds to a step.

var_x_set_time <- matrix(apply(random_walk_xcoords,1,var)) #Calculates the variance in x coordinate at each time point.
var_x_data <- as.data.frame(var_x_set_time) #converts matrix to a data frame
colnames(var_x_data) <- "x_coord_var" 
var_x_data$time <- seq(1:steps) #adds time column to the data frame

#Plotting the Brownian motion of x coordinates
x_coord_BM <- ggplot(aes(x = time, y = x_coord_var), data = var_x_data) +
  geom_line(color="#69b3a2") +
  labs(x = "Time", y ="Variance in X Coordinates", title = "Brownian Motion of X") +
  theme(plot.title = element_text(size = 20, hjust = 0.5))
  
x_coord_BM 

#Brownian Motion of Y coordinates

#The same code as run for the x coordinates was applied to the y coordinates

random_walk_ycoords <- matrix(ncol = n_sims, nrow = steps)

for (i in 1:n_sims) {
  random_walk_ycoords[,i] <- random_walk(steps)$y  
}

var_y_set_time <- matrix(apply(random_walk_ycoords,1,var))
var_y_data <- as.data.frame(var_y_set_time)
colnames(var_y_data) <- "y_coord_var"
var_y_data$time <- seq(1:steps)

y_coord_BM <- ggplot(aes(x = time, y = y_coord_var), data = var_y_data) +
  geom_line(color="pink") +
  labs(x = "Time", y ="Variance in Y Coordinates", title = "Brownian Motion of Y") +
  theme(plot.title = element_text(size = 20, hjust = 0.5))


y_coord_BM 

#Plot showing both the brownian motion of x and Y coordinates so that can be compared.

combined_BM_Plot <- ggplot()+
  geom_line(aes(x = time, y = y_coord_var, color = "Y Coordinates"), data = var_y_data) +
  geom_line(aes(x = time, y = x_coord_var, color="X Coordinates"), data = var_x_data) +
  labs(x = "Time", y ="Variance in Coordinates", title = "Brownian Motion") +
  scale_color_manual(name='Coordinate',
                     breaks=c('X Coordinates', 'Y Coordinates'),
                     values=c('X Coordinates'='#69b3a2', 'Y Coordinates'='pink')) +
  theme(plot.title = element_text(size = 20, hjust = 0.5), legend.position = c(0.2, 0.750))

combined_BM_Plot

