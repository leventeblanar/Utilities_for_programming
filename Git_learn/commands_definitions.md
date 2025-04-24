<h2>Commands</h2>

git init - creates new repository <br>
git config - get git configuration values on a global or local project level (can be run --local or --global[all repositories on system]) <br>
cd (folder name) - for navigating in a folder
cd .. - is for navigating out of a folder
git status - check git commit status to see if there is anything changed
git add . - adds everything to the staging area (if after add you include filename, only adds that)
git commit -m " " - Commit adds to repo - !! never leave out the comment or it will take you to Vim
git push - publishes to gitHub
git config --global user.name
git config --global user.email 

https://www.youtube.com/watch?v=zTjRZNkhiEU

**Definitions** <br>


Working directory: 
- the local environment where files are stored and modified as part of a project. Reflects the current state of the project's files, allowing developers to edit add or delete files
- changes here can be staged for commit (can be prepared for inclusion in the next commit)
- connected to the Git repository
- helps manage: differencies between the commited history and the current state of the files

Staging Area
- serves as an intermediate step between your local repository changes and the actual commit
- temporary storage: the staging are holds changegits that are intended to be part of the next commit
- preview changes: it allows you to preview your changes before committing them

Committing Changes
- crucial part of version control
- allows you to save your progress and record a snapshot of your project's current state

