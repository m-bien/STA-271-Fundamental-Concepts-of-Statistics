# ----- A. Construct boxplot -----

data <- c(90, 77, 100, 83, 64, 78, 92, 73, 122, 96, 60, 85, 86, 108, 70, 
          139, 56, 94, 84, 111, 93, 120, 70, 92, 100, 124, 59, 112, 79)

boxplot(data,
        main = "Family Incomes in Chicago",
        xlab = "Annual Earnings (in hundreds of $)",
        horizontal = TRUE,
        col = "honeydew2"
)


# ----- B. Find mean & standard deviation -----

mean(data)
sd(data)