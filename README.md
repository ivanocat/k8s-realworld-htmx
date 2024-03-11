# cca2324-bun-app - Dockerize Bun app and deploy in K8s
Create an image of a bun application and deploy in K8s

## Docker image
We need docker in our system, next [link](https://docs.docker.com/get-docker/) indicates how to proceed to install.

After docker instalation, we can get **realworld-htmx** application from **[https://github.com/hesxenon/realworld-htmx.git](https://github.com/hesxenon/realworld-htmx)** using next command in our working directory:

```
git clone https://github.com/hesxenon/realworld-htmx.git
```

With the code of the application in our working directory, we create the **Dockerfile** that you can consult in this repository.

```
docker build -t ivanmargarit/cca2324-bun-app:latest  .
```

Now, we have created the image in our system and we can validate how it looks like executing next:

```
docker run -d -p 3000:3000 ivanmargarit/cca2324-bun-app:latest
```
In a browser or executing curl, we can see the application running in localhost:3000

Once the image is validated we share it in the DockerHub platform, so we will push the image with next command:

```
docker push ivanmargarit/cca2324-bun-app:latest
```

## K8s 
We are using minicube to play with our new image in k8s, to install minicube follow next [link](https://minikube.sigs.k8s.io/docs/start/)

After minikube installation, we are ready to start a cluster executing 

```
minikube start
```

This process is heavy, so we need some patience... Few minutes later... the cluster is created and we can play with it. Before playing, we can evolve the minikube installation with some tips from minikube:
- Alternatively, minikube can download the appropriate version of kubectl and you should be able to use it like this 
```
minikube kubectl -- get po -A
```
- Initially, some services such as the storage-provisioner, may not yet be in a Running state. This is a normal condition during cluster bring-up, and will resolve itself momentarily. For additional insight into your cluster state, minikube bundles the Kubernetes Dashboard, allowing you to get easily acclimated to your new environment:
```
minikube dashboard
```
