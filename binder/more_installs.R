# Specifying the mirrors is based on https://stackoverflow.com/a/11488224/8508004 and was added because 
# without them R complained
install.packages("twitteR", repos='http://cran.us.r-project.org') # adding this because when I switched to using rtweet, things worked but when running `sentiment_analysis.R`,
#  I saw message from RStudio (probably triggered by `library(syuzhet)` or `library(tm)`) that `twitteR` was needed but not installed and 
# if wanted to install it. It installed from inside okay and so hoping this works so that message doesn't come up when running `sentiment_analysis.R`