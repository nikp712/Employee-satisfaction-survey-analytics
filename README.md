# Employee Work Years & Promotion Readiness Analysis
Analysis of employee satisfaction survey data using R

## Table of Contents
1. [Overview](#overview)
2. [Features](#features)
3. [Data Summary](#data-summary)
4. [Preprocessing Steps](#preprocessing-steps)
5. [Visualizations](#visualizations)
6. [Predictive Analytics](#predictive-analytics)
7. [Key Insights](#key-insights)
8. [How to Run the Project](#how-to-run-the-project)
9. [Results](#results)
10. [Future Improvements](#future-improvements)
11. [Acknowledgments](#acknowledgments)
12. [Author](#author)

---

## Overview
This project analyzes workforce data to explore trends in years worked, occupation, gender, and likelihood of promotion. The analysis is performed in R and covers data cleaning, visualization, and basic regression modelling.

---

## Features
- **Data Cleaning:** Handles missing values and data types for robust analysis.
- **Statistical Summaries:** Quick stats and outlier checks for years worked.
- **Visual Analytics:** Boxplots, scatterplots, and group summaries for clear workforce insights.
- **Predictive Analytics:** Linear regression modelling to predict years worked from demographic and job-related features.

---

## Data Summary
- **Dataset:** Employee records from `ISYS3446_A2_IntelliAuto.xlsx`
- **Main Columns:**
    - `Occupn` (Occupation), `Age`, `WrkYears`, `RichWork`, `Sex`, `FutPromo` (Likelihood of Promotion)

---

## Preprocessing Steps
1. Imported the data into R.
2. Selected relevant columns for analysis.
3. Removed rows with missing values (`na.omit`).
4. Converted categorical columns (`Sex`, `Occupn`, `RichWork`) to factors.
5. Binned `Age` into `AgeGroup` for visualizations.

---

## Visualizations

### 1. Job Advancement Perceptions
Boxplot showing the likelihood of promotion by age and gender.

![image](https://github.com/user-attachments/assets/2e95b525-32a3-4d31-a50e-24aa1213b55f)

---

### 2. Work Years by Occupation
Colour Boxplot displaying years worked across occupations.

![image](https://github.com/user-attachments/assets/81d56b2e-0091-44cc-809b-19ba42970c3f)

---

### 3. Age and Work Years
Colour Scatterplot highlighting the colour code for each occupation by age and work years.

![image](https://github.com/user-attachments/assets/8da437ad-a07b-4802-a424-6a4485dc9925)

---

## Predictive Analytics

A linear regression predicts years worked based on age, occupation, rich work experience, and sex.

A table of actual vs. predicted work years and residual error is generated for review.

---

## Key Insights
- Years worked vary significantly by occupation.
- Gender and rich work experience play roles in promotion likelihood.
- Age and occupation are significant predictors of total work years.
- Outliers in years worked were detected for further review.

---

## How to Run the Project

1. Clone or download this repository.
2. Make sure R and RStudio are installed ([Download R](https://cran.r-project.org/), [Download RStudio](https://posit.co/download/rstudio-desktop/)).
3. Open `Employee-satisfaction-survey-analytics.R` in RStudio.
4. Install dependencies by running:
    ```r
    install.packages("dplyr")
    install.packages("ggplot2")
    ```
5. Run all code chunks, or click **Knit** if using the R Markdown version.
6. View the plots and summary results in the output or saved images.

---

**Note:**  
If your code reads a file like ISYS3446_A2_IntelliAuto.xlsx, ensure that the file is included in your repo and the path is set correctly in the script (e.g., "./ISYS3446_A2_IntelliAuto.xlsx").
If you have a specific folder structure, mention where to put the data.

---

## Results
- Visualizations and regression summary output are expected.
- Outlier values in years worked are listed for managerial review.

---

## Future Improvements
- Expand regression analysis (add interaction terms, test other predictors).
- Create dashboards for HR management.
- Add more advanced machine learning for promotion prediction.

---

## Acknowledgments
- Dataset: RMIT University course ISYS3446.
- Libraries: `ggplot2`, `dplyr`.

---

## Author

**Nhi Phan** | RMIT University  
Final year student, Bachelor of Business Information Systems (Expected November 2025)
