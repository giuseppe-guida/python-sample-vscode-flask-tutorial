git clone git@github.com:microsoft/python-sample-vscode-flask-tutorial.git
cd ./python-sample-vscode-flask-tutorial
conda env create -n azpyflusk -f ./requirements.txt
conda activate azpyflusk
az webapp up -n azpyflusk -g personal
az webapp stop -n azpyflusk -g datascience-sandbox
az webapp config set -g datascience-sandbox -n azpyflusk --startup-file startup.txt
az webapp up -n azpyflusk
http://azpyflusk.azurewebsites.net
