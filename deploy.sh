docker build -t tkavuri/multi-client:latest -t tkavuri/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t tkavuri/multi-api:latest -t tkavuri/multi-api:$SHA -t tkavuri/multi-api:latest -t tkavuri/multi-api:$SHA -f ./server/Dockerfile ./server
docker build -t tkavuri/multi-worker:latest -t tkavuri/multi-worker:$SHA -f ./worker/Dockerfile ./worker


docker push tkavuri/multi-client:latest
docker push tkavuri/multi-api:latest
docker push tkavuri/multi-server:latest
docker push tkavuri/multi-worker:latest

docker push tkavuri/multi-client:$SHA
docker push tkavuri/multi-api:$SHA
docker push tkavuri/multi-server:$SHA
docker push tkavuri/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/api-deployment server=tkavuri/multi-api:$SHA
kubectl set image deployments/client-deployment server=tkavuri/multi-client:$SHA
kubectl set image deployments/worker-deployment server=tkavuri/multi-worker:$SHA

