kubectl run nginx --image=one7ime/cloud_exec:0.8 --port=80
kubectl expose deploy/nginx --type="NodePort" --port 80
kubectl scale deploy nginx --replicas=20
kubectl get svc
kubectl get pods -o wide

