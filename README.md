# bookmark-date-finder
To find the date you added a bookmark in Google Chrome

STEPS:

1. You can go click the three dots on the top right of Google Chrome > Bookmarks > Bookmark Manager > three dots on the top right > export bookmarks
2. We use rvest package which helps to scrape data from websites.
3. The time is in Unix format. If you want to convert it to normal time, you can use the following formula in Excel `r =(A1/86400)+DATE(1970,1,1) ` where A1 is the cell with the UNIX time
4. From format in the Excel menu bar, choose Short Date as format.
