import os

os.system("git add *")

commitmsg = raw_input('Enter commit message: ')

print(commitmsg)

os.system("git commit -m \"" + commitmsg + "\"")
os.system("git push origin master")