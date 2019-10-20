
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


:: Create/checkout topics/branch1
git branch topics/branch1
git checkout topics/branch1

touch C3
git add C3
git commit -m "C3"

:: checkout master
git checkout master

touch C4
git add C4
git commit -m "C4"

:: MERGE

git merge topics/branch1

git branch -d topics/branch1

git log --graph --decorate --oneline --all --author-date-order
