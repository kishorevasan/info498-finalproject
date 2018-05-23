
plot_ly(x=ArkaData$Year,type="scatter",y=ArkaData$m,name="Arkansas",mode="lines+Markers")%>%
  add_trace(y = LuisData$m,name = "Louisiana",mode = "lines+Markers")

#DID MODEL
ArkaData<- ArkaData%>%mutate(t = 0,s = ifelse(ArkaData$Year<2005,0,1))
LuisData <- LuisData%>%mutate(t = 1, s = ifelse(LuisData$Year<2005,0,1))

finaldata <- rbind(ArkaData,LuisData)

result <- lm(m~ t + s + t:s,data = finaldata)
summary(result)
