@echo off

:: General navigations
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey ls=dir

:: Git stuff
doskey gpush=git push origin $*
doskey gpull=git pull origin $*
doskey ga=git add $*
doskey gs=git status
doskey gcm=git commit -m $*
doskey makefetchhappen=git fetch --all
doskey branches=git branch -r
doskey bringme=git checkout $*
doskey newbranch=git checkout -b $*
doskey unstash=git stash apply
doskey renameto=git branch -m
doskey commitmentissues=git reset HEAD~1
doskey blowitaway=git reset --hard HEAD~1

:: Go stuff
doskey godeps=go get -d ./..

:: Terraform stuff
doskey tf=terraform $*
doskey tfp=terraform plan $*
doskey turntheearth=terraform apply $*
