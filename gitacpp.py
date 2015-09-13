import os

#does add command.
os.system("git add *")

#asks for input.
commitmsg = raw_input('Enter commit message: ')
print(commitmsg)

#does commit.
os.system("git commit -m \"" + commitmsg + "\"")

#does pull and push.
os.system("git pull origin master")
os.system("git push origin master")