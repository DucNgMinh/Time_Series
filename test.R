library(readxl)

df <- read_excel('C:\\Users\\Duc\\R Projects\\Time Series\\Data\\VN_GDP_2021.xlsx')

edit(df)
save(df, file = "VN_GDP_2021.rda")
attach(df)
View(df)

ts(df, start = c(2004,1), frequency = 4)
gdp1 = ts(gdp1, start = c(2004,1), frequency = 4)

plot.ts(gdp1)
plot.ts(gdp2)

library(Hmisc)
gdp1.l1 = Lag(gdp1, 1)
gdp1.lead1 = Lag(gdp1, -1)

data1 = data.frame(gdp1, gdp1.l1, gdp1.lead1)

cor(gdp1[1:68] , gdp2[1:68])
cor.test(gdp1[1:68], gdp2[1:68])

reg = lm(gdp1 ~ gdp2)
summary(reg)

# Serial correlation test
library(car)
durbinWatsonTest(reg)

library(lmtest)
bgtest(reg)

# Time trend
time = seq_along(gdp1)
summary(time)
  # Linear-linear
plot(time,gdp1)
abline(lm(gdp1~time))
reg412 = lm(gdp1 ~ time)
summary(reg412)

library(Metrics)
rmse(gdp1, fitted(reg412))