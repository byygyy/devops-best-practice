# git basic operation tested at git version 2.25.0
## modify a file and push
git add .  
git diff  
git commit -m "some changes"  
git push  

## get the status current branch
git status  

## get the git commit log  
git log  
## got the hisgory log
git reflog  

## git rollback to a last change point  
git reset --hard HEAD^  

## git rollback to a history change point
git reset --hard commit_id 

## revoke changes in workspace before git add  
git restore git-basic.md  
