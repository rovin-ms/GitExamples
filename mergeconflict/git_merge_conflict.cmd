
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
echo "C3 Added" > C3
git add C3
git commit -m "C3 Added"

touch C4
git add C4
git commit -m "C4"

touch C5
git add C5
git commit -m "C5"

touch C6
git add C6
git commit -m "C6"

echo "C3 Modified" > C3
git add C3
git commit -m "C3 Modified"

:: checkout master
git checkout master

echo "C3 Added" > C3
git add C3
git commit -m "C3 Added"

touch C7
git add C7
git commit -m "C7"

touch C8
git add C8
git commit -m "C8"


:: MERGE
git checkout master

git merge topics/branch1

git status

:: resolve conflict
notepad C3

git status
git add C3 
git commit -m "C3 merge resolved"
git status

::git branch -d topics/branch1

::git log --graph --decorate --oneline --all --author-date-order
