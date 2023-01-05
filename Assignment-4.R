# ----- 1. Aspirin & Heart Attacks -----

# import data
data <- read.csv("C:/Users/maddy/OneDrive/Desktop/Assignment 5 - Data.csv")

x <- (data)                        # data table

x                                  # print data table

test <- chisq.test(data)           # test statistic

test                               # print t-statistic



# ----- 2a. Reading a Newspaper -----

# data values
female <- c(5,3,6,3,7,1,1,3,0,4,7,2,2,7,3,0,5,0,4,4,5,14,3,1,2,1,7,2,5,3,7)
male <- c(0,3,7,4,3,2,1,12,1,6,2,2,7,7,5,3,14,3,7,6,5,5,2,3,5,5,2,3,3)

# create dot plots
stripchart(female,
           main = "Number of Times Reading a Newspaper",
           xlab = "Females",
           method = "stack",
           pch = 20,
           cex = 2,
           at = 0.1,
           col = "pink1"
           )

stripchart(male,
           # main = "Number of Times Reading a Newspaper",
           xlab = "Males",
           method = "stack",
           pch = 20,
           cex = 2,
           at = 0.1,
           col = "lightblue2"
           )

# ----- 2b. Calculate 95% Interval -----

summary(female)
sd(female)

summary(male)
sd(male)

t.test(female, male, conf.level = 0.95)


# ----- 3. Textbooks -----

# data values
a <- c(115,79,43,140,99,30,80,99,119,69)
b <- c(110,79,40,129,99,30,69,99,109,66)

t.test(a,b, conf.level = 0.90)

# boxplot

# sex <- factor(WORKERS1000$SEX, levels = c(1,2), labels = c("Site A", "Site B"))

boxplot(a,b,
        main = "Population Distribution of Site A and B",
        names = c("Site A", "Site B"),
        xlab = "Textbook Prices ($)",
        ylab = "Internet Bookstores",
        horizontal = TRUE,
        col = c("ivory", "cornsilk")
)