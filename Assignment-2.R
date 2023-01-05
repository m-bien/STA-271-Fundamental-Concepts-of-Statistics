sevengr <- read.delim("C:/Users/maddy/OneDrive/Desktop/sevengr.txt")

# ----- 1. Self-concept vs IQ -----

plot(x = sevengr$IQ,                           # create scatterplot
     y = sevengr$SelfConcept,
     xlab = "IQ",
     ylab = "Self-Concept",
     main = "Self-Concept vs IQ")

abline(lm(sevengr$SelfConcept ~ sevengr$IQ,    # regression line
          data = sevengr),
          col = 'indianred')


# ----- 5. Residuals vs IQ -----

reg <- lm(sevengr$SelfConcept ~ sevengr$IQ,
          data = sevengr)

reg$coefficients
reg$fitted.values
reg$residuals

plot(reg$residuals ~ reg$fitted.values,
     xlab = "Fitted Values",
     ylab = "Residuals",
     main = "Residuals vs IQ")

abline(0,0,
       col = 'indianred')
