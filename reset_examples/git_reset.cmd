
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
git commit -m "C1"a

touch C2
git add C2
git commit -m "C2"

git log --graph --oneline --decorate --all

git status

git reset --soft HEAD~

git log --graph --oneline --decorate --all

git status