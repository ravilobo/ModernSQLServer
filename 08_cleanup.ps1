# Step 1 
az login 

# step 2
kubectl delete service mssql-service
kubectl delete deployment mssql-deployment 
kubectl delete pvc mssql-data 
kubectl delete secret mssql-secret 

# Step 3 
$AzureSub = '5gg62t3g-tgw56-5rwyt-err-fghdsfg66'
$RG = "RG-SQLSRV-AKS"
$AKS = "AKS-SQLSRV"
az account set -s $AzureSub
az aks delete --name $AKS --resource-group $RG
az group delete --name $RG

# step 4 
docker container stop $(docker ps -aq)
docker container rm $(docker ps -aq)