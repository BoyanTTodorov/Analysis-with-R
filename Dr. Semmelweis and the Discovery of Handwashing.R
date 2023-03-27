# This is Dr. Ignaz Semmelweis, a Hungarian physician born in 1818 and active at the 
# Vienna General Hospital. If Dr. Semmelweis looks troubled it's probably because he's 
# thinking about childbed fever: A deadly disease affecting women that just have given birth. 
# He is thinking about it because in the early 1840s at the Vienna General Hospital as many as 
# 10% of the women giving birth die from it. He is thinking about it because he knows the cause 
# of childbed fever: It's the contaminated hands of the doctors delivering the babies. And they won't 
# listen to him and wash their hands!

# Load in the tidyverse package
suppressPackageStartupMessages(library(tidyverse))

# Read datasets/yearly_deaths_by_clinic.csv into yearly
yearly <- read_csv("datasets/yearly_deaths_by_clinic.csv")

# Print out yearly
yearly

# Adding a new column to yearly with proportion of deaths per no. births
yearly  <- yearly %>% 
  mutate(proportion_deaths = deaths/ births)
# Print out yearly
yearly

# Setting the size of plots in this notebook
options(repr.plot.width=7, repr.plot.height=4)
ggplot(yearly, aes(x=year, y=proportion_deaths, color=clinic))+geom_line()
# Plot yearly proportion of deaths at the two clinics
# Read datasets/monthly_deaths.csv into monthly
monthly <- read_csv("datasets/monthly_deaths.csv")

# Adding a new column with proportion of deaths per no. births
monthly  <- monthly %>% 
  mutate(proportion_deaths = deaths/births)

# Print out the first rows in monthly
monthly[1:4,]

# Plot monthly proportion of deaths
ggplot(monthly, aes(date, proportion_deaths))+
  geom_line()+labs(x="Date", y="Proportion Deaths")

# From this date handwashing was made mandatory
handwashing_start = as.Date('1847-06-01')

# Add a TRUE/FALSE column to monthly called handwashing_started
monthly <- monthly %>% 
  mutate(handwashing_started = date >= handwashing_start)

# Plot monthly proportion of deaths before and after handwashing
ggplot(monthly, aes(x = date, y = proportion_deaths, color = handwashing_started)) +
  geom_line() + labs(x = "Date", y = "Proportion Date")

# Calculating the mean proportion of deaths 
# before and after handwashing.

monthly_summary <- monthly %>% 
  group_by(handwashing_started) %>% 
  summarize(mean_proportion_deaths = mean(proportion_deaths))

# Printing out the summary.
monthly_summary

# Calculating a 95% Confidence intrerval using t.test 
test_result <- t.test( proportion_deaths ~ handwashing_started, data = monthly)
test_result

# The data Semmelweis collected points to that:
doctors_should_wash_their_hands <- TRUE

