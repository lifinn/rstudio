# Why I create this repository
rocker/verse is a great docker image of R, but I have to install libraries that I use a lot every time after I update the image. Besides, for users that only run the image in their own machine, their is no need for a seperate complicated password. Thus, first I add below libraries in the image and avoid re-installation. Second, I set "docker" as the default password, and the user name, of course, is "rstudio".
# What libraries I have installed
## Data management
1. feather
2. reshape2
## Plot management
1. ggthemes
## Analysis libaries
1. forecast
2. mice
## Drivers
1. odbc
2. mongolite 
3. sendmailR