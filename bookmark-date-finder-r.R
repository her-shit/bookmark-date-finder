library(rvest)

#the location of the bookmark file
link <- '/Users/yourpath/Downloads/bookmarks_28_06_2022.html'

#the date (in Unix format) is extracted. We go in steps, from the entire html file, to the "a" tag and then the add_date attribute
one <- link %>%
  read_html() %>%
  html_elements("a") %>% html_attr("add_date")

#storing the URL of each bookmark, which is founder under "href" attribute
two <- link %>%
  read_html() %>%
  html_elements("a") %>% html_attr("href")

#the name of the bookmark, which is extracted using html_text()
three <- link %>%
  read_html() %>%
  html_elements("a") %>% html_text()

#writing all three lists as a dataframe
four <- data.frame(one, two, three)

#exporting the dataframe to a casv file
write.csv(four, "/Users/yourpath/Desktop/final.csv")
