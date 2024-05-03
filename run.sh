sudo umount /run/k3s/containerd/io.containerd.grpc.v1.cri/sandboxes/*/shm
sudo rm -rf /run/k3s/containerd/io.containerd.grpc.v1.cri/sandboxes/*
kubectl delete -k .
kubectl apply -k .
