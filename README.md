# AutomaticGit 

Tool to manage github repositories and flutter projects. It admits three operations

* Create: Create a github repository and flutter project from scratch (makes use of `flutter create`). By default it makes the github repository _Private_.
* Delete: Deletes a github repository and flutter project.
* Make Public: Makes a github repository _Public_.

Usage:
```bash
bash app.sh command repoName
```

Alternatively, you can edit `~/.bashrc` or `~/.zshrc` adding

```bash
alias automaticGit="bash path/to/repository/app.sh"
```

And to use it just

```
automaticGit command repoName
```

Where:

* Command must be one of the three operations:
  * `create`,
  * `delete`,
  * `makePublic`.
* RepoName must be the name of the flutter project.
## Requirements

### Packages
Requirements are listed in `env.yml`, an **anaconda** enviroment. To install it

```bash
conda env update -f env.yml -n base
```

If *pip* user run

```bash
pip install requirements.txt
```

### Credentials

You must create a file `credentials.py` where github user credentials are stored. It should be

```
user="githubUsername"
password="githubPassword"
```