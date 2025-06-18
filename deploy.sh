BRANCH=$1

if [ "$BRANCH" == "main"]; then
    DEPLOY_PATH = "/home/azureuser/clase_3"
else
    DEPLOY_PATH = "/home/azureuser/stage"
fi

ssh -o StrictHostKeyChecking=no azureuser@128.85.34.22 <<HTML
 cd $DEPLOY_PATH    

 git pull --rebase origin $BRANCH
HTML