# Scripts
A collection of scripts that I wrote to make life easier.

## In this collection:
* `save.py`
* `begin.py`
* `ctl.sh`
* `GetBing.py`

## Save.py
* This runs the commands needed to create a commit and to push to the remote branch.

### How to Use
1. Run `python save.py` in command line.
2. Type in commit message.

## Begin.py
* This just starts up websites that I normally view in the morning.

### How to Use
1. Run `python begin.py` in command line.

## ctl.sh
* This is a bash script that will be used for the current koazie ec2 server. It handles the start/stop of `server.js` and the `mongod` service.

## GetBing.py
* Script that gets Bings Spotlight Image and sets it as my wallpaper.
* This script is used in conjunction with Automator and the Calendar app for OSX. Automator to create a executable app and Calendar to run everyday.

### How to Use - GetBing.py

#### To use once 
* Type `python GetBing.py` in the Terminal

#### To set on repeat
1. Create an app using Automator with the action `Run Shell Script`
2. Copy and Paste the script into the section provided
3. Save anywhere (I did it in my Applications folder) under any name you want.
4. Next, go to Calendar and create an event that repeats everyday at arbitrary time (I don't know when Microsoft updates the image)
5. Add an alert
6. Click the 'Message' drop down and select `Open file...`
7. Choose your app. 

## Notes
* begin.py is actually used through Automator for Mac.
* ctl.sh has a hardcoded path. It's bad practice, but since it'll just sit there on a server then there shouldn't be any issues.
