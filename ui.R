#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/



library(leaflet)



# Define UI for application that allows users to create a map of homes based on Zillow Home Value Ranges. 
shinyUI(fluidPage(

    
    
    # Application title
    titlePanel("Home Price Ranges of Homes in Baltimore's Mayfield Neighborhood"),
        h3("Select Price Range from Drop-Down to Populate Map of Homes"),
      
      
   
     # Sidebar with a slider input for Zillow Home Price Range Drop Down
    sidebarLayout(
        sidebarPanel(
           #  selectInput("bedrooms",
            #            "Number of Bedrooms:",
             #           choices=c("1","2","3","4","5","6")),
           #  selectInput("bathrooms",
            #             "Number of Bathrooms:",
             #            choices=c('1.0','1.5','2.0','3.0','3.5','4.0','4.5')),
            # selectInput("years",
             #            "Year Built:",
              #           choices=c('Before 1900', '1901 to 1920', '1921 to 1940', '1941 to 1952')),
             selectInput("value","Zillow Home Estimate Range:", 
                         choices=c("$100,000 to $199,999","$200,000 to $299,999","$300,000 to $399,999","$400,000+")),
              actionButton("submit","Submit",style="color: #fff; background-color: #ff6633; border-color: #2e6da4") ,
             h4(strong("App Description")),
           p("This app is the last project for the Developing Data Products course."),
p("For this project, I gathered Zillow home value data on houses in Baltimore's Mayfield neighborhood.
  The app creates a map allowing you to filter homes in the neighborhood by the Zillow home value range."),
p("Use the drop-down to select homes in a particular value range.Click on a marker on the app to get the address and exact home value")  ),
    
     # Show a Leaflet Map of Houses
        mainPanel(
            leafletOutput("r1map", width="605", height="650")
        )
    )))

