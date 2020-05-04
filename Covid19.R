#Library
library(covid19.analytics)

#Data
ag <- covid19.data(case = "aggregated")
View(ag)
tsconfirm <- covid19.data(case = "ts-confirmed")
tsa <- covid19.data(case = "ts-ALL")


#Report
report.summary(Nentries = 10,
               graphical.output = T)

#Totals per Location
tots.per.location(tsconfirm, geo.loc = c("India","US"))

#Growth Rate
growth.rate(tsconfirm,geo.loc = "India")

#Totals Plot
totals.plt(tsa)
totals.plt(tsa,"India")

#World Map
live.map(tsa)

#SIR MODEL 
#In this model people are grouped in 3 Categories
# 1) S - People who are healthy but susceptible for disease
# 2) I - The people that are infected
# 3) R - People Who are recovered.

generate.SIR.model(tsconfirm,"India",tot.population = 1380004385)
