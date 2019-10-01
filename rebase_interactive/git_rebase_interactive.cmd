
:: Cleanup
rmdir .git /s /q
del C*

:: create the repo
git init

git config --global user.name "Ron Vincent"
git config --global user.email "rovin@microsoft.com"

git add .gitignore
git commit -m ".gitignore file"

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

git rebase -i HEAD~3

git log --graph --decorate --oneline --all --author-date-order
