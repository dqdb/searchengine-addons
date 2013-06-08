Redirect GET Search Requests
Copyright (c) 2013 dqdb

This small Node.js server transforms GET requests into POST requests. It supports only UTF-8 encoding.

# Installation:
- Find a free TCP port and modify line 1 in `r.js`
- Start the server with Node.js 
- Write down the prefix URL displayed in Node.js console log.

# Enabling in Opera 15:
- Exit your browser.
- Open `Web Data` file in your profile folder with an SQLite editor.
- Open `keywords` table and select the search engine to modify.
- Insert the previously recorded prefix URL into `url` field before the current search URL.
- Save changes and start your browser.

# Enabling in Chrome and Chromium:
- Open `Settings` and click `Manage search engines`.
- Insert the previously recorded into address field before the current search URL.
- Click `Done`.
