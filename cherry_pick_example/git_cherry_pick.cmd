
:: Cleanup
rmdir .git /s /q
del C*

:: create the repo
git init

git config --global user.name "Ron Vincent"
git config --global user.email "rovin@microsoft.com"

git add .gitignore
git commit -m "added .gitignore"

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

touch C3
git add C3
git commit -m "C3"

touch C4
git add C4
git commit -m "C4"

git checkout -b feature

touch C5
git add C5
git commit -m "C5"

touch C6
git add C6
git commit -m "C6"

:: store the last commit id for later
git rev-parse HEAD > curr_com.txt
set /p curr_com=<curr_com.txt
echo %curr_com%


git checkout master

touch C7
git add C7
git commit -m "C7"

git log --graph --decorate --oneline --all --author-date-order

:: cherry pick C6 to master
git cherry-pick %curr_com%

del curr_com.txt

git merge feature

