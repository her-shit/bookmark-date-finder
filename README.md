# bookmark-date-finder
To find the date you added a bookmark in Google Chrome. The first step is to export all the bookmarks. Next you can either manually check a bookmark-

1. Opening the file in a browser and then right click > view page source
2. Locate the required bookmark and see the ADD_DATE attribute inside the <A HREF ...> tag of your chosen bookmark.

OR use the given code to create a table with all bookmarks.

1. You can go click the three dots on the top right of Google Chrome > Bookmarks > Bookmark Manager > three dots on the top right > export bookmarks
2. The time is in Unix format. If you want to convert it to normal time, you can use the following formula in Excel `=(A1/86400)+DATE(1970,1,1)` where A1 is the cell with the UNIX time. From format in the Excel menu bar, choose Short Date as format.
