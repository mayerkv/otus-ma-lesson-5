otus-ma-lesson-5
---

Build a docker image:

```shell
docker buildx build --platform linux/amd64,linux/arm64 -t kvmayer/otus-ma-lesson-5:latest --push .
```

Deploy

```shell
kubectl apply -f .kube
```