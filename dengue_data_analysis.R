state=c("Andhra Pradesh",
        "Arunachal Pradesh",
        "Assam",
        "Bihar",
        "Chhattisgarh",
        "Goa",
        "Gujarat",
        "Haryana",
        "Himachal Pradesh",
        "Jammu & Kashmir",
        "Jharkhand",
        "Karnataka",
        "Kerala",
        "Madhya Pradesh",
        "Meghalaya",
        "Maharashtra",
        "Manipur",
        "Mizoram",
        "Nagaland",
        "Odisha",
        "Punjab",
        "Rajasthan",
        "Sikkim",
        "Tamil Nadu",
        "Tripura",
        "Telangana",
        "Uttar Pradesh",
        "Uttrakhand",
        "West Bengal",
        "A&N Island",
        "Chandigarh",
        "Delhi",
        "D&N Haveli",
        "Daman & Diu",
        "Puducherry"
        
  )
state
Y_2014= c(1262,
        27,
        85,
        297,
        440,
        168,
        2320,
        214,
        2,
        1,
        36,
        3358,
        2575,
        2131,
        0,
        8573,
        0,
        19,
        0,
        6433,
        472,
        1243,
        5,
        2804,
        6,
        704,
        200,
        106,
        3934,
        139,
        13,
        995,
        641,
        46,
        1322
)
Y_2014
Y_2015= c(3159,
          1933,
          1076,
          1771,
          384,
          293,
          5590,
          9921,
          19,
          153,
          102,
          5077,
          4075,
          2108,
          13,
          4936,
          52,
          43,
          21,
          2450,
          14128,
          4043,
          21,
          4535,
          40,
          1831,
          2892,
          1655,
          8516,
          153,
          966,
          15867,
          1154,
          165,
          771
)
Y_2015
Y_2016= c(3417,
          13,
          6157,
          1912,
          356,
          150,
          8028,
          2493,
          322,
          79,
          414,
          6083,
          7439,
          3150,
          172,
          6792,
          51,
          580,
          142,
          8380,
          10439,
          5292,
          82,
          2531,
          102,
          4037,
          15033,
          2146,
          22865,
          92,
          1246,
          4431,
          4161,
          89,
          490
)
Y_2016
Y_2017= c(4381,
          15,
          4346,
          1804,
          388,
          234,
          4420,
          4333,
          442,
          403,
          689,
          16342,
          19694,
          2566,
          40,
          6894,
          187,
          107,
          191,
          4055,
          15002,
          7768,
          659,
          21350,
          103,
          2773,
          3032,
          958,
          10697,
          13,
          1083,
          8896,
          1972,
          59,
          4586
)
Y_2017

#Creating data frame of Dengue cases in four years

dengue_cum= data.frame(state, Y_2014,Y_2015,Y_2016,Y_2017)
dengue_cum
str(dengue_cum)

#Combine plot

par(mfrow=c(2,2))
a= barplot(dengue_cum$Y_2014,main = 2014, col = rainbow(20), ylim = range(pretty(c(0,dengue_cum$Y_2014))))
axis(1, at=a, labels=dengue_cum$state, tick=FALSE, las=2, line=-0.5, cex.axis=1)
b= barplot(dengue_cum$Y_2015,main = 2015, col = rainbow(20), ylim = range(pretty(c(0,dengue_cum$Y_2015))))
axis(1, at=b, labels=dengue_cum$state, tick=FALSE, las=2, line=-0.5, cex.axis=1)
c= barplot(dengue_cum$Y_2016,main = 2016, col = rainbow(20), ylim = range(pretty(c(0,dengue_cum$Y_2016))))
axis(1, at=c, labels=dengue_cum$state, tick=FALSE, las=2, line=-0.5, cex.axis=1)
d= barplot(dengue_cum$Y_2017,main = 2017, col = rainbow(20), ylim = range(pretty(c(0,dengue_cum$Y_2017))))
axis(1, at=d, labels=dengue_cum$state, tick=FALSE, las=2, line=-0.5, cex.axis=1)



#Sewage plot

statesew= c(
   "Andhra Pradesh",
  "Arunachal Pradesh",
  "Assam",
  "Bihar",
  "Chhattisgarh",
  "Goa",
  "Gujarat",
  "Haryana",
  "Himachal Pradesh",
  "Jammu & Kashmir",
  "Jharkhand",
  "Karnataka",
  "Kerala",
  "Madhya Pradesh",
  "Meghalaya",
  "Maharashtra",
  "Manipur",
  "Mizoram",
  "Nagaland",
  "Odisha",
  "Punjab",
  "Rajasthan",
  "Sikkim",
  "Tamil Nadu",
  "Tripura",
  "Telangana",
  "Uttar Pradesh",
  "Uttarakhand",
  "West Bengal",
  "Andaman & Nicobar Islands",
  "Chandigarh",
  "Delhi",
  "Dadra & Nagar Haveli",
  "Daman & Diu",
  "Pondicherry"
)
sewage_generation= c(
  2871,
  50,
  703,
  1879,
  951,
  145,
  4119,
  1413,
  110,
  547,
  1270,
  3777,
  2552,
  3214,
  95,
  8143,
  132,
  90,
  92,
  1121,
  1664,
  2736,
  24,
  5599,
  154,
  1671,
  7124,
  495,
  4667,
  22,
  164,
  4155,
  26,
  29,
  136
  ) 

sewage_data= data.frame(statesew,sewage_generation)

sewage_data
str(sewage_data)

#Plotting Sewage data

s1= barplot(sewage_data$sewage_generation ,main = "SEWAGE_GEN_2015", col = rainbow(20), ylim = range(pretty(c(0,sewage_data$sewage_generation))))
axis(1, at=s1, labels=sewage_data$statesew, tick=FALSE, las=2, line=-0.5, cex.axis=0.85)

#Histogram of 2015- Cases and Sewage Generation
par(mfrow=c(1,2))
hist(dengue_cum$Y_2015, main=2015, xlim = range(pretty(c(0, dengue_cum$Y_2015))), col="blue", xlab = "Dengue_cases")
hist(sewage_data$sewage_generation, main= "Sewage_Generation_2015", col="red", xlab = "Sewage_Generated(MLD)", xlim = range(pretty(c(0, sewage_data$sewage_generation))))

#Correlation B/W Dengue cases and Sewage generation in All states(Spearman, Pearson, Kendall)

cor(dengue_cum$Y_2015, y = sewage_data$sewage_generation, use = "everything", method = c("pearson"))
cor(dengue_cum$Y_2015, y = sewage_data$sewage_generation, use = "everything", method = c("kendall"))
cor(dengue_cum$Y_2015, y = sewage_data$sewage_generation, use = "everything", method = c("spearman"))


#Variance of both data sets
var(dengue_cum$Y_2015, y = NULL, use = "everything")
var(sewage_data$sewage_generation)

#Standard deviation of both data sets
sd(dengue_cum$Y_2015)
sd(sewage_data$sewage_generation)



#Scatter plot 
par(mfrow=c(1,1))
scatter.smooth(dengue_cum$Y_2015, sewage_data$sewage_generation, xlab = "DENGUE_CASES_2015", ylab = "SEWAGE_GEN_2015", main= "SCATTER_PLOT", col="red")

#Curve fitting
fit2 <- lm(sewage_data$sewage_generation~poly(dengue_cum$Y_2015,5,raw=TRUE))
fit2
summary(fit2)

residuals(fit2)
mean(residuals(fit2))
sqrt(sum(residuals(fit2)^2)/df.residual(fit2))
