#unblock the file to skip the waring 
#unblock-file C:\Ravi\Languages\Demo\Modern_SQLServer\03_03_InstallSS.ps1

#set-location C:\Ravi\Languages\Demo\Modern_SQLServer


kubectl create secret generic mssql-secret --from-literal=SA_PASSWORD="MyComplexPassword@!"
kubectl apply -f sqlonaks.yaml

kubectl get all 