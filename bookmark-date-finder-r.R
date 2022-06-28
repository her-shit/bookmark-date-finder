library(rvest)

link <- '/Users/yourpath/Downloads/bookmarks_28_06_2022.html'

one <- link %>%
  read_html() %>%
  html_elements("a") %>% html_attr("add_date")

two <- link %>%
  read_html() %>%
  html_elements("a") %>% html_attr("href")

three <- link %>%
  read_html() %>%
  html_elements("a") %>% html_text()

four <- data.frame(one, two, three)

write.csv(four, "/Users/yourpath/Desktop/final.csv")
