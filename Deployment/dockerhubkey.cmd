@echo off
set /p username="Docker Hub username: "
set /p password="Docker Hub password: "

kubectl create secret docker-registry dockerhubkey --docker-server=registry.app.corpintra.net --docker-username="%username%" --docker-password="%password%"
kubectl get secrets

pause