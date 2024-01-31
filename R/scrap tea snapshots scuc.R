library(rvest)



# Specify the URL for the first webpage
# url2018 <- "https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2018&lev=D&id=094902&prgopt=reports%2Fsnapshot%2Fsnapshot.sas"

# url2019 <- https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2019&lev=D&id=094902&prgopt=reports%2Fsnapshot%2Fsnapshot.sas


# url2020 <- https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2020&lev=D&id=094902&prgopt=reports%2Fsnapshot%2Fsnapshot.sas

# url2021 <- https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2021&lev=D&id=094902&prgopt=reports%2Fsnapshot%2Fsnapshot.sas

# url2022 <- https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2022&lev=D&id=094902&prgopt=reports%2Fsnapshot%2Fsnapshot.sas






# Read the HTML content of the webpage
webpage <- read_html(url)

# Extract the data you need from the HTML using CSS selectors
data <- webpage %>%
  html_table(fill = TRUE)



# Export the tibble to a text file
write.table(data, file = "scuc 2017-2018 snapshot data.txt", sep = "\t", quote = FALSE, row.names = FALSE)
