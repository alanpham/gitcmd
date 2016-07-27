# Scripts
A collection of scripts that I wrote to make life easier.

## In this collection:
* `save.py`
* `begin.py`
* `ctl.sh`

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


## Notes
* begin.py is actually used through Automator for Mac.
* ctl.sh has a hardcoded path. It's bad practice, but since it'll just sit there on a server then there shouldn't be any issues.
