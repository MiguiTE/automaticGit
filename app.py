import requests
import sys
import os

from requests.auth import HTTPBasicAuth
from credentials import user, password

# usefull vars
repo = sys.argv[1]


# create repository
response = requests.post(
    "https://api.github.com/user/repos",
    auth=HTTPBasicAuth(user, password),
    json={"name": repo, "private": True}
)