# User Guide to Course Four Project of Developing Data Products:
## Home Price Ranges of Homes in Baltimore's Mayfield Neighborhood

**Here is a link to the shiny app:**  https://cfabacaxi15.shinyapps.io/project4/

Here is a link to the ui code on my github page: https://github.com/abaxaci15/ProjectFourDDP/blob/main/ui.R

Here is a link to the server code on my github page:https://github.com/abaxaci15/ProjectFourDDP/blob/main/server.R

General Description:
This app is the last project for the Developing Data Products course. For this project, I gathered Zillow home value data on houses in Baltimore's Mayfield neighborhood.
The app creates a map allowing you to filter homes in the neighborhood by the Zillow home value range.
Use the drop-down to select homes in a particular value range. Click on a marker on the map to get the address and exact home value for a particular home. 

Code description:
To create the app I used the Shiny APP platform, with ui.R and server.R files.
To create the value ranges a user-friendly drop-down box was created on the user side. A submit button is also displayed for the user.

The server side is organized around the submit button, which serves as a trigger event (observeEvent). Once the submit button is hit, the code creates a map with the homes based on the value range input.

