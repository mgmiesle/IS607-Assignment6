# Matthew Miesle
# CUNY SPS
# IS 607 SECT 01
# Week 6 Assignment
# Due 10/7/2014 EOD

# Assignment:
# Find a web page from a different site, and use the rvest package functions 
# to pull at least one piece of information from that web page.

require(rvest)

# Pizza places listed in Astoria, NY on Yelp
# (1st page of results)

pizza.URL <- "http://www.yelp.com/search?cflt=pizza&find_loc=Astoria%2C+Queens%2C+NY&l=p%3ANY%3ANew_York%3AQueens%3AAstoria"

pizza.page <- html(pizza.URL)

pizza <- pizza.page %>%
    html_nodes(".indexed-biz-name .biz-name") %>%
    html_text()
pizza

# the names of the restaurants is assigned to the pizza vector
# the css selector from selectorgadget is awesome




# Optional: after you’ve loaded the rvest package, you can also look at 
# the provided demo code by running the
# commands below. This is a very new, raw package, so there are likely
# problems with the provided (pre-release)
# samples, but they are still worth studying!]

# list all available demos
# demo(package="rvest")
# lists code for tripadvisor demo; follow instructions
# in your RStudio console window.
# demo("tripadvisor", "rvest")

# [Optional advanced exercise: Use other R packages (such as XML and RCurl) to pull down the same data as in
#  your assignment above; briefly compare your experience working with different packages to perform the same
#  task].
