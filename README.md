# Loadtest framework

Docker image to generate some load on the apis

It uses the latest stable version of [drill](https://github.com/fcsonline/drill)

# Running

To run it in kubernetes (docker-desktop or minikube), build the image (TODO: push to dockerhub) and helm install the container.

```bash
$ docker build -t drill:stable -f Dockerfile .
...
$ helm install -n loadtest -f charts/loadtest/values.yaml charts/loadtest
```

Once running in kubernetes, exec onto the pod:

```bash
$ kubectl exec -ti <loadtest-pod> -- bash
```

Now edit the benchmark.yaml file and change the base directive to the service ClusterIP of the service you'd like to test.

Run the test:

```bash
$ drill --benchmark benchmark.yaml --stats
```
