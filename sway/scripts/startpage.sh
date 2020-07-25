#!/bin/bash

browser=chromium
keyword=$(zenity --entry --text="Search with Startpage.com") && $browser "startpage.com/sp/search?query=$keyword"
