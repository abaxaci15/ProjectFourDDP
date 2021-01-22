# ProjectFourDDP
Shiny Code for Course Four of Developing Data Products

General Description:
This app is the last project for the Developing Data Products course. For this project, I gathered Zillow home value data on houses in Baltimore's Mayfield neighborhood.
The app creates a map allowing you to filter homes in the neighborhood by the Zillow home value range.
Use the drop-down to select homes in a particular value range. Click on a marker on the app to get the address and exact home value.

Code description:
To create the app I used the Shiny APP platform, with a ui.R and server.R file.
To create the value ranges a user-friendly drop down box was created on the user side. A submit button is also displayed for the user.
The server side is organized around the submit button, that serves as a trigger event (observe event). Once the submit button is hit, the code creates a map with the homes based on the value range input.
