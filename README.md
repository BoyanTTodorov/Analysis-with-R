# Dr. Ignaz Semmelweis and the Fight Against Childbed Fever

## Overview

This R script analyzes historical data related to childbed fever and Dr. Ignaz Semmelweis' efforts to reduce mortality rates at the Vienna General Hospital in the early 1840s. The script uses data on yearly deaths by clinic and monthly deaths, exploring the impact of handwashing on reducing mortality rates.

## Context

Dr. Ignaz Semmelweis was a Hungarian physician who observed a high mortality rate among women giving birth at the Vienna General Hospital. The script investigates the correlation between handwashing practices and mortality rates, shedding light on the importance of hand hygiene in healthcare settings.

## Data Analysis

1. **Yearly Deaths by Clinic:**
   - Load and display the dataset containing yearly deaths by clinic.
   - Calculate the proportion of deaths per number of births.
   - Plot the yearly proportion of deaths at the two clinics over time.

2. **Monthly Deaths:**
   - Load and display the dataset containing monthly deaths.
   - Calculate the proportion of deaths per number of births.
   - Plot the monthly proportion of deaths over time.

3. **Handwashing Intervention:**
   - Identify the date when handwashing became mandatory (handwashing_start).
   - Add a column indicating whether handwashing had started.
   - Plot the monthly proportion of deaths before and after handwashing.

4. **Statistical Analysis:**
   - Calculate the mean proportion of deaths before and after handwashing.
   - Perform a t-test to assess the statistical significance of the difference.

## Results

The analysis suggests a correlation between the introduction of handwashing and a decrease in mortality rates. The statistical test further supports the hypothesis that handwashing had a significant impact on reducing deaths.

## Conclusions

Dr. Ignaz Semmelweis' work emphasizes the importance of hand hygiene in healthcare, laying the foundation for modern infection control practices. The script provides a visual and statistical exploration of the data, highlighting the positive impact of handwashing interventions.

## Running the Script

Ensure you have the required R libraries installed, including `tidyverse`. Modify file paths as needed before running the script.

```R
# Install required packages
install.packages("tidyverse")

# Run the script
Rscript your_script_name.R
