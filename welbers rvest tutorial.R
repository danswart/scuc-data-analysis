# Welbers rvest tutorial using their own pre-made example webpage

# load libraries

library(tidyverse)
library(rvest)



html = 'https://bit.ly/3lz6ZRe' %>% read_html()

## find any <table> element
html %>% html_element('table')            ## left table 
html %>% html_elements('table')           ## set of both tables

## find any element with class="someTable"
html %>% html_element('.someTable')       ## left table
html %>% html_elements('.someTable')      ## set of both tables

## find any element with id="steve" 
## (only called it steve to show that id can be anything the developer chooses)
html %>% html_element('#steve')           ## right table 
html %>% html_elements('#steve')          ## set with only the right table 

## find any <tr> element with class="headerRow"
html %>% html_element('tr.headerRow')     ## left table first row
html %>% html_elements('tr.headerRow')    ## first rows of both tables

## find any element with class="sometable blue"
html %>% html_element('.someTable.blue')  ## right table    
html %>% html_elements('.someTable.blue') ## set with only the right table    


tables = html %>% html_elements('table')
html_table(tables)

'https://en.wikipedia.org/wiki/Hyperlink' %>%
  read_html() %>%
  html_elements('a') %>%
  length()


'https://en.wikipedia.org/wiki/Hyperlink' %>%
  read_html() %>%
  html_elements('#content a') %>%
  length()


'https://en.wikipedia.org/wiki/Hyperlink' %>%
  read_html() %>%
  html_element('#content') %>%
  html_elements('a') %>%
  length()






