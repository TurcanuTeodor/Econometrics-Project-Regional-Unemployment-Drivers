# Packages (install only once)
# install.packages(c("readxl", "dplyr", "psych", "lmtest", "car", "sandwich"))

library(readxl)
library(dplyr)
library(psych)
library(lmtest)
library(car)
library(sandwich)

df_raw <- read_excel("DatasetEconometrie.xlsx") #path needed

str(df_raw)
summary(df_raw)

#clean data
df <- df_raw[rowSums(is.na(df_raw)) != ncol(df_raw), ]

#descriptive stats

vars <- c("UnemploymentRate%",
          "GDPperCapita_PPS",
          "TertiaryEducation%",
          "EmploymentRate%",
          "PopulationDensity_inh_km2")

desc <- data.frame(
  Mean = sapply(df[vars], mean, na.rm = TRUE),
  Median = sapply(df[vars], median, na.rm = TRUE),
  Mode = sapply(df[vars], function(x) {
    ux <- unique(na.omit(x))
    ux[which.max(tabulate(match(x, ux)))]
  })
)

desc

#regression models

#Model 1: without dummy
model1 <- lm(`UnemploymentRate%` ~ 
               GDPperCapita_PPS + 
               `TertiaryEducation%` + 
               `EmploymentRate%` + 
               PopulationDensity_inh_km2,
             data = df)

summary(model1)

#Model 2: with capital region dummy
model2 <- lm(`UnemploymentRate%` ~ 
               GDPperCapita_PPS + 
               `TertiaryEducation%` + 
               `EmploymentRate%` + 
               PopulationDensity_inh_km2 + 
               Dummy_CapitalRegion,
             data = df)

summary(model2)

#tests

#normality of residuals
res <- residuals(model2)
shapiro.test(res)

#homoscedasticity
bptest(model2)

#robust standard errors(optinal, but insightful)
coeftest(model2, vcov = vcovHC(model2, type = "HC1"))

#autocorrelation
dwtest(model2)

#multicollinearity
vif(model2)
