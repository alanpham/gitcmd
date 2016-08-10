import urllib2
import json
import os.path, time
import os
from os.path import expanduser

def createWallpaper(path):
  print ("Downloading Bing wallpaper to %s" %(path))
  f = open(path, 'w')
  bingpic = urllib2.urlopen(url)
  f.write(bingpic.read())

def setWallpaper(path):
  os.system("osascript -e 'tell application \"Finder\" to set desktop picture to POSIX file \"" + path + "\"'")


resolution = '1920x1080'
BingSpotlightImgDir = expanduser("~") + '/Pictures/BingSpotlight/'
nameWallpaper = 'wallpaper.jpg'

response = urllib2.urlopen("http://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US")
obj = json.load(response)
url = (obj['images'][0]['urlbase'])
url = 'http://www.bing.com' + url + '_' + resolution + '.jpg'

if not os.path.exists(BingSpotlightImgDir):
  os.makedirs(BingSpotlightImgDir)

path = BingSpotlightImgDir + nameWallpaper

createWallpaper(path)
setWallpaper(path)
os.system("killall Dock")
