library(mice)
set.seed(22000)

#load data
data <- read_csv("./Data/Behavioral_Risk_Factor_Data__Health-Related_Quality_of_Life__HRQOL_.csv")

#selection params
locations <- unique(data$LocationDesc)
locations <- locations[ locations != "Louisiana"]
genders <- c("Either",'Male','Female')


#IMPUTING MISSING DATA
td <- data%>%filter(Question == 'Mean mentally unhealthy days',Break_Out == 'Overall',!is.na(Year))%>%group_by(LocationDesc,Year)%>%summarize(m = mean(Data_Value))
tempData <- td%>%group_by(LocationDesc)%>%mice(m=6,maxit=100,meth='pmm',seed=5000)
finalcleandata <- complete(tempData,2)

write.csv(finalcleandata,"./data/MentalHealthStateClean.csv")
