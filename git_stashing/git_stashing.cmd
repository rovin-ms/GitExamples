
:: Cleanup
rmdir .git /s /q
del C*

:: create the repo
git init

git config --global user.name "Ron Vincent"
git config --global user.email "rovin@microsoft.com"

:: create, stage and commit new files on master
touch C0
git add C0
git commit -m "C0"

touch C1
git add C1
git commit -m "C1"

touch C2
git add C2
git commit -m "C2"


:: Create/checkout topics/branch1
git branch topics/branch1
git checkout topics/branch1

touch C3
git add C3

:: stash these changes
git stash

git stash list

git checkout master

git status

git checkout topics/branch1

:: apply the stash
git stash apply

:: git stash pop

:: git stash <branch>

