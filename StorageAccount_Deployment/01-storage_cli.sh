
rg='arm-introduction-cli-01'
az group create -n $rg -l northeurope
az group deployment create -g $rg --template-file '01-storage.json'