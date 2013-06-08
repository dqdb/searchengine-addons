Redirect GET Search Requests
Copyright (c) 2013 dqdb

This small ASP.NET application transforms GET requests into POST requests. It supports only UTF-8 encoding.

# Installation (for Vista/7/8):
- Go to step 6 if you already have IIS installed.
- Open `Turn Windows features on or off` page in Control Panel.
- Install `Internet Information Services` (you do not have to install all features, default settings will be almost enough except the one in step 3).
- Install `Internet Information Services/World Wide Web Services/Application Development Features/ASP.NET x.y` (install highest version).
- Wait until the wizard exits.
- Open `Internet Information Services Manager` from the Start menu.
- Right click on `Default Web Site` in the `Connections` tree and select `Add Application`.
- Enter `r` as alias and browse for the folder with `r.ashx` and `web.config` into `Physical path`.
- Click `OK`.

# Enabling in Opera 15:
- Exit your browser.
- Open `Web Data` file in your profile folder with an SQLite editor.
- Open `keywords` table and select the search engine to modify.
- Insert `http://localhost/r/r.ashx?` into `url` field before the current search URL.
- Save changes and start your browser.

# Enabling in Chrome and Chromium:
- Open `Settings` and click `Manage search engines`.
- Insert `http://localhost/r/r.ashx?` into address field before the current search URL.
- Click `Done`.
