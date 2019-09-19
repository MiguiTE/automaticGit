import requests
import json
import sys
import os

from requests.auth import HTTPBasicAuth
from credentials import user, password

# usefull vars
command = sys.argv[1]
repo = sys.argv[2]

'''Function that creates a repository private by default'''
def create(repo, user, password):
    response = requests.post(
        "https://api.github.com/user/repos",
        auth=HTTPBasicAuth(user, password),
        json={"name": repo, "private": True}
    )

'''Function that deletes a repository'''
def delete(repo, user, password):
    response = requests.delete(
        "https://api.github.com/repos/{}/{}".format(user,repo),
        auth=HTTPBasicAuth(user, password)
    )

'''Function that makes a repository public'''
def makePublic(repo, user, password):
    response = requests.patch(
        "https://api.github.com/repos/{}/{}".format(user,repo),
        auth=HTTPBasicAuth(user, password),
        data=json.dumps({"private": False})
    )

# Manage user input
if (command == "create"):
    create(repo, user, password)
elif (command == "delete"):
    delete(repo, user, password)
elif (command == "makePublic"):
    makePublic(repo, user, password)