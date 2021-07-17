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

Check with curl
```shell
$ curl 127.0.0.1/otusapp/kmayer/health -H 'Host: arch.homework'
{"status":"OK"}%
```

Check with newman (dns setting will be needed)
```shell
$ newman run otus-ma-lesson-5.postman_collection.json
newman

Otus microservice architec

→ /health
  GET http://arch.homework/otusapp/kmayer/health [200 OK, 162B, 61ms]
  ✓  Status code is 200
  ✓  Content-Type header is application/json
  ✓  Response.status === "OK"

┌─────────────────────────┬──────────────────┬──────────────────┐
│                         │         executed │           failed │
├─────────────────────────┼──────────────────┼──────────────────┤
│              iterations │                1 │                0 │
├─────────────────────────┼──────────────────┼──────────────────┤
│                requests │                1 │                0 │
├─────────────────────────┼──────────────────┼──────────────────┤
│            test-scripts │                2 │                0 │
├─────────────────────────┼──────────────────┼──────────────────┤
│      prerequest-scripts │                1 │                0 │
├─────────────────────────┼──────────────────┼──────────────────┤
│              assertions │                3 │                0 │
├─────────────────────────┴──────────────────┴──────────────────┤
│ total run duration: 104ms                                     │
├───────────────────────────────────────────────────────────────┤
│ total data received: 15B (approx)                             │
├───────────────────────────────────────────────────────────────┤
│ average response time: 61ms [min: 61ms, max: 61ms, s.d.: 0µs] │
└───────────────────────────────────────────────────────────────┘


```