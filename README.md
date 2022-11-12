# Kasten Chart for OKE
OKE Oracle Kubernetes Engine + Kasten K10 + Nginx
I just want to build an OKE Cluster (Oracle Kubernetes Engine) to play with the various Data Management capabilities e.g. Backup/Restore, Disaster Recovery and Application Mobility.

It is challenging to create a OKE cluster if you are not familiar to it. After the OKE Cluster is up running, we still need to install Kasten, create a Nginx App. The whole process is not that simple.

# Here Are the prerequisities. 

1. Go to your terminal or cloud shell, download and set your kubeconfig
````
oci ce cluster create-kubeconfig --cluster-id ocid1.cluster.oc1.iad.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --file $HOME/.kube/config --region xx-xxxxxx-x --token-version 2.0.0
````
2. Verify if you can access the cluster via kubectl
````
kubectl get nodes
````
3. Clone the github repo, run below command
````
git clone https://github.com/ociknowledge/oci-kasten
````
4. Install the tools and set Oracle Cloud Access Credentials
````
cd oci-kasten;./k10-add-init.sh
````
5. Optionally, you can customize the region, bucketname
````
vi k10-add-env.sh
````
# To build the labs, run 
````
./k10-deploy.sh
````
1. Install Kasten K10
2. Create an OCI OS location profile
3. Deploy a NGIX App

# To delete the labs, run 
````
./k10-destroy.sh
````
1. Remove NGIX App
2. Remove Kasten K10
3. Remove all the relevant snapshots
4. Remove the objects from the storage bucket