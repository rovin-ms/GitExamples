
:: Cleanup
rmdir .git /s /q
del C*

:: create the repo
git init

git config --global user.name "Ron Vincent"
git config --global user.email "rovin@microsoft.com"

:: create, stage and commit a new file on master
touch C0
git add C0
git commit -m "C0"

touch C1
git add C1
git commit -m "C1"

touch C2
git add C2
git commit -m "C2"

git checkout -b experiment

touch C4
git add C4
git commit -m "C4"



git checkout master

touch C3
git add C3
git commit -m "C3"

git log --graph --decorate --oneline --all

::-------------------------------
:: rebase 
git checkout experiment
git rebase master
:: This operation works by going to the common 
:: ancestor of the two branches (the one you’re 
:: on and the one you’re rebasing onto), getting 
:: the diff introduced by each commit of the branch 
:: you’re on, saving those diffs to temporary files, 
:: resetting the current branch to the same commit 
:: as the branch you are rebasing onto, and finally 
:: applying each change in turn.

git log --graph --decorate --oneline --all

:: go back to master and do a ff merge
git checkout master
git merge experiment

git log --graph --decorate --oneline --all

:: delete the experiment branch
git branch -d experiment

git log --graph --decorate --oneline --all


