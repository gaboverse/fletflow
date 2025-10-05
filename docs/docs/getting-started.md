# Getting started

Follow this 2 steps and start building your app in less than 5 minutes!

## 1. Create your project

```
# Create a project directory:
mkdir my-app && cd my-app

# Generate your project from the copier template:
copier copy gh:gaboverse/fletflow .
```

Copier requires git to mantain your project, so it is recommended to create a repo (e.g.: GitHub, GitLab, BitBucket) and run:

```
# Initialize your git repo
git init

# Follow the instructions given by your provider for adding the remote (pay attention on branch names, etc.)
# git remote add ... 

# Add, commit and push!
git add .
git commit -m "Fletflow: Initial commit"
git push origin main  # or whatever
```
## 2. Setup the app

We will use the make scripts to make it easier:

```
make devel-new-setup
```

More info about `Makefile` scripts [here](/makefile/).

After that, the service will be restarted and available on `localhost:8000`. Enjoy!
