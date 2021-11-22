$rg = 'arm-introduction-01'
New-AzResourceGroup -Name $rg -Location northeurope -Force

New-AzResourceGroupDeployment `
    -Name 'bksaarmdeployment' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json' `
    -storageName 'bkstorageaccountarm3' `
    -storageSKU 'Standard_LRS'
