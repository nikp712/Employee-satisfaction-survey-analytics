##1.Load necessary libraries

library(ggplot2)
library(dplyr)

##2.Import the dataset (skip header rows as needed; adjust 'skip' value if required)
dt <- ISYS3446_A2_IntelliAuto
head(dt)

df <- select(.data = dt, c(Occupn, Age, WrkYears, RichWork, Sex, FutPromo))
head(df)

##3.Data Cleaning and Pre-processing
##3.1.Remove rows with any NA values
sum(is.na(df))
colSums(is.na(df))
df <- na.omit(df)

##3.2.Convert categorical columns to factor
df$Sex <- as.factor(df$Sex)
df$Occupn <- as.factor(df$Occupn)
df$RichWork <- as.factor(df$RichWork)

##3.3.Create AgeGroup (for visualization)
df$Age <- as.numeric(df$Age)
df$AgeGroup <- cut(df$Age, breaks = seq(20, 70, 10), right = FALSE)

##4.Colour Boxplot: Job Advancement Perceptions

ggplot(df, aes(x = Age, y = FutPromo, fill = Sex)) +
  geom_boxplot() +
  labs(
    x = "Age Group",
    y = "Likelihood of Promotion",
    fill = "Gender",
    title = "Job Advancement Perceptions by Gender and Age Group"
  ) +
  theme_classic()

##4.1.Visualisation 2: Years Worked 
##4.2.Basic Boxplot: Work Years by Occupation 

boxplot(df$WrkYears ~ df$Occupn,
        ylab = 'Years Worked',
        xlab = 'Occupation',
        main = 'Work Years by Occupation')

# Colour Boxplot 
ggplot(df, aes(x = Occupn, y = WrkYears, fill = Occupn)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Pastel1") +  # Try "Set2", "Dark2", etc.
  labs(
    y = "Years Worked",
    x = "Occupation",
    fill = "Occupn",
    title = "Work Years by Occupation"
  ) +
  theme_minimal()

##4.3.Basic Scatterplot: Age vs Work Years
plot(df$Age, df$WrkYears,
     xlab = 'Age',
     ylab = 'Years Worked',
     main = 'Age and Work Years')

# Colour Scatterplot
ggplot(df, aes(x = Age, y = WrkYears, color = Occupn)) +
  geom_point(size = 2, alpha = 0.7) +
  scale_color_brewer(palette = "Set1") +
  labs(
    x = "Age",
    y = "Years Worked",
    color = "Occupation",
    title = "Age and Years Worked"
  ) +
  theme_light()

##5.Predictive Analytics: Linear Regression
model <- lm(WrkYears ~ Age + RichWork + Occupn + Sex, data = df)
summary(model)

##5.1.Predicted vs. Actual Table
results <- data.frame(
  Actual_WrkYears = df$WrkYears,
  Predicted_WrkYears = predict(model, df),
  Error = resid(model)
)
head(results)

##6.Outlier Detection
outliers <- boxplot.stats(df$WrkYears)$out
print(outliers)

