clear-host 
$containerName = "myContainer$($(get-random))"
$containerName 

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=ThisIsAPassword123@#$" `
 -p 1433:1433 --name myContainer1162544153 `
 -d mcr.microsoft.com/mssql/server

<#
Docker ps 
docker container ls 
#>