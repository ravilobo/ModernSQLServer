
$ENV:ACCEPT_EULA = 'yes'
$AzureSub = "5gg62t3g-tgw56-5rwyt-err-fghdsfg66"
$RG = 'RG-SQLSRV-AKS'
$AKS = 'AKS-SQLSRV'
$Region = 'eastus2'
$KubernetesVersion = '1.20.5'
az login 

# wait for the above step to complete. 
az account set -s $AzureSub
az group create --name $RG --location $Region

# if AKS creation fails, use the below command to get the supported versions. 
# az aks get-versions --location eastus2
az aks create `
 --resource-group $RG `
 --generate-ssh-keys `
 --name $AKS `
 --kubernetes-version $KubernetesVersion `
 --node-vm-size Standard_E8s_v3 `
 --node-count 2


az aks get-credentials --resource-group $RG --name $AKS --overwrite-existing

