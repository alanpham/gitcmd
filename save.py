import os
addfiles = raw_input('Files to add (Put * for all):')
#does add command.
os.system("git add " + addfiles)

#asks for input.
commitmsg = raw_input('Enter commit message: ')

#does commit.
os.system("git commit -m \"" + commitmsg + "\"")

#does pull and push.
os.system("git pull origin master")
os.system("git push origin master")
