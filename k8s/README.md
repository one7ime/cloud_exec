# k8s script


[root@node1 ~]# kubectl cluster-info
Kubernetes master is running at https://172.17.8.101:6443

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
[root@node1 ~]# kubectl get node
NAME    STATUS   ROLES    AGE   VERSION
node1   Ready    <none>   14d   v1.15.0
node2   Ready    <none>   14d   v1.15.0
[root@node1 ~]# kubectl run nginx --image=one7ime/cloud_exec:0.8 --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/nginx created
[root@node1 ~]# kubectl get pods
NAME                     READY   STATUS         RESTARTS   AGE
nginx-6b4b7cbfc8-nv6wh   0/1     ErrImagePull   0          12s
[root@node1 ~]# kubectl expose deploy/nginx --type="NodePort" --port 80
service/nginx exposed
[root@node1 ~]# kubectl get svc
NAME         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
kubernetes   ClusterIP   10.254.0.1       <none>        443/TCP        14d
nginx        NodePort    10.254.162.181   <none>        80:31745/TCP   17s
[root@node1 ~]# kubectl get po
NAME                     READY   STATUS             RESTARTS   AGE
nginx-6b4b7cbfc8-nv6wh   0/1     ImagePullBackOff   0          119s
[root@node1 ~]# kubectl scale deploy nginx --replicas=20
deployment.extensions/nginx scaled
[root@node1 ~]# kubectl get svc
NAME         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
kubernetes   ClusterIP   10.254.0.1       <none>        443/TCP        14d
nginx        NodePort    10.254.162.181   <none>        80:31745/TCP   4m52s

[root@node1 ~]# kubectl get pods
NAME                     READY   STATUS    RESTARTS   AGE
nginx-6b4b7cbfc8-4m7pk   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-5v99m   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-8s5k4   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-9b7mz   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-c4hkh   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-dfhtm   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-fvs4w   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-gfmjp   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-gp5dr   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-l9dcl   1/1     Running   0          3m30s
nginx-6b4b7cbfc8-msctv   1/1     Running   0          3m30s
nginx-6b4b7cbfc8-nfpc7   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-nv6wh   1/1     Running   0          5m50s
nginx-6b4b7cbfc8-pcdgj   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-q276p   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-rc5bk   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-rff6j   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-tpx4f   1/1     Running   0          3m30s
nginx-6b4b7cbfc8-v29jr   1/1     Running   0          3m29s
nginx-6b4b7cbfc8-vxfsj   1/1     Running   0          3m30s

