# Azure-k8s-cli-docker
Dockerizing Azure API 2.0 calls to create a Kubernetes cluster consuming ACS, AKS.
You also can create an Azure Container Registry (ACR).

**Dependencies**, you need to install the following software in order to be able to use this code:

- Install and configure Azure CLI 2.0.0 :
 -https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest
- Install kubectl client :
 -https://kubernetes.io/docs/tasks/tools/install-kubectl/
 
## Getting Started

- Clone the project locally: 
```
git clone <git_url> && export $REPO_PATH=$PWD
```
- Create env.sh file as follows:
```
touch envs.sh && export $ENV_VAR_PATH=$PWD/envs.sh
```
```
AZURE_SUBSCRIPTION=XXXXXXXX
CLIENT_ID=XXXXXXXXX
CLIENT_SECRET=XXXXXXX
AZURE_RESOURCE_GROUP=example-k8s-westeu-poc
CLUSTER_NAME=k8s-cluster-poc
LOCATION=westeurope
K8S_VERSION=1.8.1
ORCHESTRATOR_TYPE=kubernetes
```
 > **Note:** **ORCHESTRATOR_TYPE** is just for ACS.**CLIENT_ID** and **CLIENT_SECRET** are your AZURE API credentials 
- Choose your Azure Container flavor (aks or acs): 
``` 
cd azure-k8s-cli-docker/docker/aks 
or 
cd azure-k8s-cli-docker/docekr/acs
```
 > **Note:** You also can create an **Azure Container Registry** by  ```cd azure-k8s-cli-docker/docker/acr``` then ```sh create_registry.sh```.
 > 
- Run `sh create_cluster.sh`.
- You can delete, upgrade and scale your cluster using the scripts at the same level than ```azure-k8s-cli-docker/docker/create_cluster.sh```.


