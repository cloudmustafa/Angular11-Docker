echo "Create AKS Cluster"
echo "Run command: az aks create"
echo "`n"
echo "OUTPUT"
az aks create --resource-group demoRGam --name demoClusterAM --node-count 4 --service-principal "e5425ed3-9068-4d8b-9d32-32d50f46e89a" --client-secret "5f67e273-84d4-43a5-a3de-78dbb36833e6" --generate-ssh-keys --attach-acr demoacram
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Merge credentials of AKS cluster to your local .kube config file"
echo "Run command: az aks get-credentials --resource-group slbrg --name mynewcluster --overwrite-existing"
echo "`n"
echo "OUTPUT"
az aks get-credentials --resource-group demoRGam --name demoClusterAM --overwrite-existing
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Verify AKS Nodes are available"
echo "Run command: kubectl get nodes"
echo "`n"
echo "OUTPUT"
kubectl get nodes
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Create an ACR image pull secret key which will authorize AKS to pull images from ACR using the Service Principal created earlier"
echo "Run command: kubectl create secret docker-registry acr-auth --docker-server sogetislbdemo.azurecr.io --docker-username ServicePrincipalID --docker-password ServicePrincipalPassword --docker-email joydeep.ghosh@us.sogeti.com"
echo "`n"
echo "OUTPUT"
kubectl create secret docker-registry acr-auth --docker-server demoacram.azurecr.io --docker-username "e5425ed3-9068-4d8b-9d32-32d50f46e89a" --docker-password "5f67e273-84d4-43a5-a3de-78dbb36833e6" --docker-email akhterul.mustafa@sogeti.com
Write-Output "--------------------------------------------------------------------"
echo "`n"

# echo "Pull images from ACR and deploy to AKS"
# echo "Run command: kubectl apply -f Deployment.yaml"
# echo "`n"
# echo "OUTPUT"
# kubectl apply -f Deployment.yaml
# Write-Output "--------------------------------------------------------------------"
# echo "`n"

# echo "Verify the pods created"
# echo "Run command: kubectl get pods"
# echo "`n"
# echo "OUTPUT"
# kubectl get pods
# Write-Output "--------------------------------------------------------------------"
# echo "`n"

# echo "Verify the services created"
# echo "Run command: kubectl get services"
# echo "`n"
# echo "OUTPUT"
# kubectl get services
# Write-Output "--------------------------------------------------------------------"
# echo "`n"

echo "Apply cluster role binding to authorize viewing of components of AKS cluster created"
#echo "Run command: kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard"
echo "`n"
echo "OUTPUT"
#kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
Write-Output "--------------------------------------------------------------------"
echo "`n"
