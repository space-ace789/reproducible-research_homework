# Reproducible research: version control and R

## My Answers

This is the link to my repository for the logistic growth class -> <https://github.com/space-ace789/logistic_growth>. </br>
This contains my answers to the first three questions of the assignment within the **README.md** as well as any accompanying code.

<ins>**Question 4**<ins>

<ins>Running Random Path Code:<ins>

When run the random walk code randomly produces two different ways of navigating through a 2D space as shown by a line drawn across the space. In this code time has been encoded as a gradient from dark blue at the start to light blue at the end which is useful as it allows you to see not only differences in the shape of the path but also differences in the origin and final points of the path, as well as whether the two paths occupy the same space at the same time. In this simulation time actually represents the number of 'steps' taken by the hypothetical moving object we are tracking. 

In the original execution of the code the paths produced were very different not only in their shape and occupation of the space, but also in their position throughout time. For example the first path both starts and finishes near the top of its space, while the second path travels from the top to the bottom. As well as differing in shape and direction of movement the paths also differ in the amount of space they occupy and the subset of the total coordinate space they reside in. While both paths span a range of about 6 Y coordinates while path one ranges from 06 to 0, path 2 occupies the y corrdinates -1 to 5. While there is a bit more overlap between the two paths in terms of x coordinates (path 1 = 0 to 4, path 2 = -3 to 2) path 2 occupies a wider area. Therefore we can conclude that while both paths traverse a similar amount of space vertically, the second path includes more horizontal movement.

Each time the code is executed two new sets of random coordinates, and therefore two new paths are generated. Additionally decreasing the number of steps taken decreases the smoothness of the path. This code could likely produce an almost infinte number of unique paths through the space and something similar might be useful for introducing stochasticity into models. This is very useful in biology as stochastic events occur frequently in the real world and are therefore can be very important to consider when creating mathematical models of biological processes. 

<ins>Random Seeds:<ins>

A random seed is a function/method used in computing to allow people to produce the same random values each time a set of code is run. This means that the outputs of random seeds are not truly random and are instead refered to as psuedorandom. This is because while the initial values pulled from a random seed have been randomly generated, each subsequent time the same set of randomly generated values will be generated. In other words each seed had a predetermined set of values it will output, however the each specific combination of values was created randomly. This is somewhat similar to the concpet of chaos theory in which each specific set of inputs has their own unique pattern which will be reliably reproduced everytime they are substituted into a model. However what this pattern is is random and cannot be predicted,until you run a simulation with the set of inputs and actually observe what pattern is generated.

The random seed itself will be a (set of) numbers or a vector which will initialse a specific psuedorandom generator. This could be very useful if you want the analyse the effects of stochasticity on a model, as you need a way to add randomness to the output however you would not neccessarily want to be generating new figures or other outputs each time you run a set of code as this could make analysis difficult. Using random seeds is also probably useful when sharing data with other scientist. It allows you to maintain reproducibility of anaylsis, which is an important part of science, as it will allow people to run the same code and get the same outputs to analyse. However it still allows you to initially include some randomness.

Random seeds can be used to generate passcodes allowing them to acts as  secret keys which can be shared among a select group of people or systems. As long as the output of the seed is suitably random to prevent it from being easily guessed then in theory only those who already know the seed needed to generate the passcode would be able to access whatevr it is being used to protect.

<ins>Brownian Motion Code:<ins>

This is the code path for finding the edited version of the random walking R file, either via the code path -> question-4-code/random_walk.R, or from this link <https://github.com/space-ace789/version_control_assignment/blob/main/question-4-code/random_walk.R>

<ins>Commit History:<ins>

<img width="1091" alt="Commit History 1" src="https://github.com/user-attachments/assets/32c2253b-83f0-4add-abec-9a1e70bddb20" />
<img width="1091" alt="Commit History 2" src="https://github.com/user-attachments/assets/6403aad1-f57c-4830-ba6c-4f2caa502836" />
<img width="1103" alt="Commit History 3" src="https://github.com/user-attachments/assets/889fff83-1261-47e1-8cf6-29b5cb4370fd" />
<img width="1089" alt="Commit History 4" src="https://github.com/user-attachments/assets/b9fb62d2-3e9b-44b1-a248-5ef64e89a560" />
<img width="1089" alt="Commit History 5" src="https://github.com/user-attachments/assets/1f42992d-6c1d-448c-a83e-f8a0ac3c01c8" />

The images above show the commit history associated with adding the code for brownian motion.

<ins>**Question 5**<ins>

**See the question 5 answers r document for full answers and the corresponding code for this, found via the path.Question 5 Answers.R, or the link <https://github.com/space-ace789/version_control_assignment/blob/main/Question%205%20Answers.R>**

The Number of rows is 33 and the number of columns is 13.

A log transform is what allows the data to be fitted to a linear model. 

ɑ = 1181.807, and β = 1.5152, once rounded to 4sf and 3sf respectively these are the same as the values calculated in the origina study, shown in table 2. 

<img width="883" alt="Screenshot 2024-12-13 at 09 07 54" src="https://github.com/user-attachments/assets/4cc48610-7475-41a3-bf36-538e53810bfa" />

This is the code used to reproduce the figure shown in the hand out, and below is an screenshot of the figure produced, which can also be found here - reproduced_figure.png.

<img width="872" alt="Screenshot 2024-12-13 at 09 09 49" src="https://github.com/user-attachments/assets/13071b13-d236-4909-8731-66a114b18306" />

The estimated volume of a dsDNA virus with 300 kb long genome is 6697007 nm<sup>3</sup>. 

## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points. First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers (also make sure that your username has been anonymised). All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   a) A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points) \
   b) Investigate the term **random seeds**. What is a random seed and how does it work? (5 points) \
   c) Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points) \
   d) Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points) 

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \alpha L^{\beta}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   a) Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)\
   b) What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points) \
   c) Find the exponent ($\beta$) and scaling factor ($\alpha$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points) \
   d) Write the code to reproduce the figure shown below. (10 points) 

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  e) What is the estimated volume of a 300 kb dsDNA virus? (4 points) 
