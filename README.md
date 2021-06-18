
# NextJs app on Fission

This example now moved to https://github.com/fission/examples/tree/master/samples/nextjs-prefixpath

## Deploy

- Fission builder
- Fission environment
- Build NodeJS app and create Fission package
- Fission function and HTTP route

```bash
./deploy/build.sh
```

## Use

```bash
kubectl --namespace fission port-forward $(kubectl --namespace fission get pod -l svc=router -o name) 32325:8888
curl localhost:32325/nextapp
```

## Cleanup

```bash
./deploy/destroy.sh
```
