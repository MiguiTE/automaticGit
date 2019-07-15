# AutomaticGit 

Tool to create a git and github repository. Usage:

```bash
bash app.sh repoName
```

Or you can edit `~/.bashrc` or `~/.zshrc` adding a line

```bash
alias create="bash path/to/repository/app.sh"
```

And to use it just

```
create repoName
```

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

**NOTE** This tool initializes the repository as private, to turn it public it should be done in github (for now)