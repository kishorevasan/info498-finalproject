
data <- read.csv("./Data/State-Year-Avg-Temp.csv")
data$dt <- as.vector(data$dt)


getyear <- function(x){
  return(substr(x,1,4))
}

data$dt <- as.vector(sapply(data$dt,getyear))
View(data)

data%>%group_by(dt)%>%summarize(m = mean(AverageTemperature))
