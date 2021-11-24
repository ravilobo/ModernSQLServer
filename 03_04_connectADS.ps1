

# SA password: MyComplexPassword@!
$LoadBalancerIP = kubectl get service  mssql-service -o jsonpath='{ .status.loadBalancer.ingress[0].ip }'
$LoadBalancerIP

azuredatastudio





