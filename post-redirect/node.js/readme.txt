Redirect GET Search Requests
Copyright (c) 2013 dqdb

This small Node.js server transforms GET requests into POST requests. It supports only UTF-8 encoding.

Installation:
1. Find a free TCP port and modify line 1 in "r.js"
2. Start the server with Node.js 
3. Write down the prefix URL displayed in Node.js console log.

Enabling in Opera 15:
1. Exit your browser.
2. Open "Web Data" file in your profile folder with an SQLite editor.
3. Open "keywords" table and select the search engine to modify.
4. Insert the previously recorded prefix URL into "url" field before the current search URL.
5. Save changes and start your browser.

Enabling in Chrome and Chromium:
1. Open "Settings" and click "Manage search engines".
2. Insert the previously recorded into address field before the current search URL.
3. Click "Done".
