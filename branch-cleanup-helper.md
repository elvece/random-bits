## Branch cleanup helper

cd ~/.local/bin  
touch git-branch-clean  
add following to file:  

    #!/bin/sh
    git push origin $1 --delete
    git branch -d $1

chmod 755 git-branch-clean  

cd ~/  
vim .gitconfig  
add the following:  

    [alias]
        branchd = !git-branch-clean
