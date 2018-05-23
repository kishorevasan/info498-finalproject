library(plotly)

a <- read.csv("Data/MentalHealthStateClean.csv",stringsAsFactors = F)
a$X <- NULL
a <- a[which(a$Year >= 1995),]
a <- a[which(a$LocationDesc != "Nationwide"),]
colnames(a) <- c("State", "Year", "code", "Data_Value")

b <- read.csv("Data/State-Year-Avg-Temp.csv",stringsAsFactors = F)
b$dt <- as.Date(b$dt)
b <- b[b$dt>="1993-01-01" & b$dt<="2010-01-01",]
b <- b[,-1]
b$dt <- substring(b$dt,1,4)
colnames(b) <- c("Year", "Avg.Temp", "Avg.Temp.Uncertanity", "State", "Country")
b$Year <- as.integer(b$Year)

for (i in 1 :nrow(b)) {
  if(b$State[i] == "District Of Columbia") {
    b$State[i] <- "District of Columbia"
  }
}


c <- read.csv("Data/statelatlong.csv",stringsAsFactors = F)
c$City <- NULL
colnames(c) <- c("code", "lat", "long")

# joining data sets 
full <- left_join(a, b, by = c("State", "Year"))
full <- full[,-c(6,7)]
full <- left_join(full, c, by = "code")

# creating the map
# give state boundaries a white border
mapplot <- function(year){
        data.1 <- full[which(full$Year==year),]
      l <- list(color = toRGB("white"), width = 2)
      # specify some map projection/options
      g <- list(
        scope = 'usa',
        projection = list(type = 'albers usa'),
        showlakes = TRUE,
        lakecolor = toRGB('white')
      )
      data.1$hover_text <- paste("Temperature:", round(data.1$Avg.Temp), "Days:", data.1$Data_Value, sep="<br>")
      p <- plot_geo(data.1, locationmode = 'USA-states') %>%
        add_trace(
          z = ~Avg.Temp ,locations = ~code,
          color = ~Avg.Temp ,text = ~hover_text
        )  %>%
        add_markers(
          y = ~lat, x = ~long, locations = ~code,
          size = ~Data_Value,text = ~hover_text
        )  %>%
        colorbar(title = "Average Temperature") %>%
        layout(
          geo = g,
          width = 800,
          height = 560
        )
      return(p)
}


#DID DATA


didplot <- function(loc){
  
  state_avg<-filter(a,State==loc)
  
  luis_data <- a%>%filter(State == "Louisiana")
  
  p <- plot_ly(state_avg,x=state_avg$Year,type="scatter",y=state_data$m,name=loc,mode="lines+Markers")%>%
    add_trace(y = luis_data$m,name = "Louisiana",mode = "lines+Markers")%>%
    layout(xaxis=list(title="Year"),
           yaxis=list(title="Number of Days"),
           title = "Average Number of Mentally Unhealthy Days by Year")

}


