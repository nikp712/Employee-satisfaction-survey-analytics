# Employee Satisfaction Survey Analytics
Analysis of employee satisfaction survey data using R

## Objective
This project analyzes results from the IntelliAuto Employee Satisfaction Survey to explore job advancement perceptions and factors influencing employee tenure. The aim is to uncover insights to guide HR management in workforce transition and retention strategies.

## Dataset
- **File:** `ISYS3446_A2_IntelliAuto.xlsx`
- **Description:** Contains employee demographic data (age, gender, occupation), work history (years worked, rich work experience), and survey responses (likelihood of promotion, etc.).

## Methodology

1. **Data Preprocessing**
   - Import and clean the data (remove missing values, convert categorical variables to factors, group ages).
2. **Exploratory Data Analysis (EDA)**
   - Summary statistics for all variables.
   - Visualize key relationships (e.g., promotion likelihood by gender and age group, work years by occupation).
3. **Predictive Analytics**
   - Build a linear regression model to predict years of employment based on age, gender, occupation, and work experience.
   - Evaluate model performance.
4. **Outlier Detection**
   - Identify employees with unusually high or low years worked.

## Key Visualizations

### 1. Job Advancement Perceptions by Gender and Age Group
![Job Advancement Boxplot](job_advancement_boxplot.png)

### 2. Work Years by Occupation
![Work Years by Occupation](work_years_by_occupation.png)

### 3. Age vs. Years Worked Scatterplot
![Scatterplot Age vs Work Years](scatterplot_age_workyears.png)

## Results

- **Gender and Age:** Gender and age group both show clear patterns in perceived promotion likelihood.
- **Occupation:** Years worked varies significantly across different occupations.
- **Regression Model:** Age, gender, occupation, and “rich work” experience are all significant predictors of years worked.
- **Outliers:** Several employees have tenure outside the typical range; these cases may merit further HR review.

## How to Reproduce

1. Clone or download this repository.
2. Place `ISYS3446_A2_IntelliAuto.xlsx` in your working directory.
3. Run `analysis.R` (see the provided R script).
4. All results and plots will be generated automatically.

## Recommendations

- Leverage demographic and work experience insights to design tailored retention strategies.
- Investigate outlier cases for best practices or risk factors.

## License

This project is for educational purposes only.  
Author: [Your Name]
