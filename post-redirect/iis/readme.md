**Redirect GET Search Requests**

Copyright (c) 2013 dqdb

This small `ASP.NET` application transforms `GET` requests into `POST` requests. It supports only `UTF-8` encoding.

## Installation (for Vista/7/8)
1. Go to step 6 if you already have IIS installed.
2. Open `Turn Windows features on or off` page in Control Panel.
3. Install `Internet Information Services` (you do not have to install all features, default settings will be almost enough except the one in step 3).
4. Install `Internet Information Services/World Wide Web Services/Application Development Features/ASP.NET x.y` (install highest version).
5. Wait until the wizard exits.
6. Open `Internet Information Services Manager` from the Start menu.
7. Right click on `Default Web Site` in the `Connections` tree and select `Add Application`.
8. Enter `r` as alias and browse for the folder with `r.ashx` and `web.config` into `Physical path`.
9. Click `OK`.

## Enabling in Opera 15
1. Exit your browser.
2. Open `Web Data` file in your profile folder with an SQLite editor.
3. Open `keywords` table and select the search engine to modify.
4. Insert `http://localhost/r/r.ashx?` into `url` field before the current search URL.
5. Save changes and start your browser.

## Enabling in Chrome and Chromium
1. Open `Settings` and click `Manage search engines`.
2. Insert `http://localhost/r/r.ashx?` into address field before the current search URL.
3. Click `Done`.
