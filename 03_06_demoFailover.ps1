# Simulate a failure by killing the pod

kubectl get pods -o wide 
kubectl delete pod mssql-deployment-584785959c-9h2dv
kubectl get pods -o wide 
#kubectl describe pod -l app=mssql