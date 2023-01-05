WORKERS1000 <- read.csv("C:/Users/maddy/OneDrive/Desktop/WORKERS1000.csv")


# ----- 1. Bargraph summarizing education level -----

e <- (WORKERS1000$EDUC)     # assign to variable

table(e)                    # find count

barplot(table(e),           # create bar graph
        main = "Education",
        xlab = "Highest Education Level Reached",
        names.arg = c("None", "Some High School", "High School Diploma", "Some College", "Bachelor's Degree", "Post-Grad Degree"),
        ylab = "Workers",
        ylim = c(0,350),
        col = "beige",
  )


# ----- 2. Histogram summarizing total income -----

income <- (WORKERS1000$EARN)

hist(income,
     main = "Income",
     xlab = "Total Earnings ($)",
     xlim = c(-5000,300000),
     ylab = "Workers",
     ylim = c(0,800),
     col = "honeydew2",
  )


# ----- 3. Boxplots summarizing total income -----

income <- (WORKERS1000$EARN)

sex <- factor(WORKERS1000$SEX, levels = c(1,2), labels = c("Male", "Female"))

boxplot(income~sex,
        main = "Income (Male vs Female)",
        xlab = "Total Earnings ($)",
        ylab = "Sex",
        ylim = c(-280, 300000),
        horizontal = TRUE,
        col = c("powderblue", "mistyrose"),
  )


# ----- 4. Histogram summarizing age -----

age <- (WORKERS1000$AGE)

hist(age,
     main = "Age",
     xlab = "Age (Years)",
     ylab = "Workers",
     ylim = c(0,350),
     breaks = 5,
     col = "linen",
 )