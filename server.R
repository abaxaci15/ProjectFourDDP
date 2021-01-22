#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Load packages
library(shiny)
library(shiny)
library(leaflet)
library(dplyr)
library(plyr)

# Load data on homes
mapdata<-read.csv("mapdata.csv")

# Create Ranges for Drop down
for (i in 1:nrow(mapdata))
{  if  (is.na(mapdata$amount[i])) {mapdata$valuerange[i]<-"NA"}
    else if (as.numeric(mapdata$amount[i])>=100000 & as.numeric(mapdata$amount[i])<200000) {mapdata$valuerange[i]<-"$100,000 to $199,999"}
    else if (as.numeric(mapdata$amount[i])>=200000 & as.numeric(mapdata$amount[i])<300000) {mapdata$valuerange[i]<-"$200,000 to $299,999"}
    else if (as.numeric(mapdata$amount[i])>=300000 & as.numeric(mapdata$amount[i])<400000) {mapdata$valuerange[i]<-"$300,000 to $399,999"}
    else if  (as.numeric(mapdata$amount[i])>400000)  {mapdata$valuerange[i]<-"$400,000+"}
    else {mapdata$valuerange[i]<-"NA"}
}

#for (i in 1:nrow(mapdata))
#{  if  (is.na(mapdata$year[i])) {mapdata$yearrange[i]<-"NA"}
#    else if (as.numeric(mapdata$year[i])>=1800 & as.numeric(mapdata$year[i])<1900) {mapdata$yearrange[i]<-"Before 1900"}
#    else if (as.numeric(mapdata$year[i])>=1900 & as.numeric(mapdata$year[i])<1921) {mapdata$yearrange[i]<-"1901 to 1920"}
#    else if (as.numeric(mapdata$year[i])>=1921 & as.numeric(mapdata$year[i])<1941) {mapdata$yearrange[i]<-"1921 to 1940"}
#    else if  (as.numeric(mapdata$year[i])>=1941)  {mapdata$yearrange[i]<-"1941 to 1952"}
#    else {mapdata$yearrange[i]<-"NA"}
#}

# Create map trigger based on input range selected by user. 
shinyServer(function(input, output){
    
    observeEvent(input$submit, {
        
     num_bed<- mapdata %>% filter(valuerange %in% input$value)
     output$r1map <- renderLeaflet({
     leaflet(num_bed) %>%
     addTiles() %>%  # Add default OpenStreetMap map tiles
     addMarkers(lng=as.numeric(num_bed$longitude), lat=as.numeric(num_bed$latitude), 
     popup=paste0("Address:",num_bed$street,"<br>","Zillow Home Value Estimate:",num_bed$amount))
    }) 
        
 }) })
