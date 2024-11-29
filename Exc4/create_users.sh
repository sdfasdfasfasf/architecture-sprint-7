kubectl create user reader-user -n default
kubectl create user editor-user -n default
kubectl create user admin-user -n default

kubectl create token reader-user -n default
kubectl create token editor-user -n default
kubectl create token admin-user -n default