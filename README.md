# Welcome
- This is a basic 'Hello World!' app using Python and Flask, to be used for practicing deployment

- Options to deploy app:
    - To simlpy run the app:
        - `python app.py`
        - The app will run on port `:5000`
        - Type this in the browser to see the result: `localhost:5000`
    
    - To deploy it in Kubernetes:
        - Create your cluster:
            - `eksctl create cluster -f ./k8s/cluster-hw.yaml`
        - Change environment to this cluster (if you were using Minikube previously):
            - `aws eks update-kubeconfig --region eu-west-2 --name hw-cluster`
        - Apply resources:
            - `kubectl apply -f ./k8s/hw-deployment.yaml` (the image needs to be uploaded to AWS ECR first! Change in `hw-deployment.yaml`!)
            - `kubectl apply -f ./k8s/hw-service.yaml`
        - Type this in the browser to see the result: `localhost:5000`
    
    - Deploy using Helm:
        - Now that it's set up, we can deploy:
            - `helm install flask-app-with-helm helm/charts/flask-app`
            - `helm upgrade flask-app-with-helm helm/charts/flask-app --install` (if you need to make any changes, eg it didn't work on the first try)
        - Use the 2 commands that get displayed, to get an URL!