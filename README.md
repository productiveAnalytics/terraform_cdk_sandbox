# terraform_cdk_sandbox
Misc Terrform CDK (TF CDK) codebase


## Install Terraform
- On windows: ```choco install terraform```
- On Mac: 
```
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```
- On Ubuntu Linux:
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform
```

Confirm Terraform installation
```
terraform version
```

## Install TF CDK
- ```sudo npm install --global cdktf-cli@latest```
- Confirm version: ```cdktf --version```

## Quickstart with Terraform & Docker
1. Start Docker Desktop on Windows
2. Ensure Docker is running: ```docker info```
3. mkdir terraform-docker-container && cd terraform-docker-container
4. ```terraform init``` (or better: ```terraform init --upgrade```)
5. Refer Terraform & Docker script as main.tf
6. ```terraform plan -out "terraform_docker_plan.out" ```
7. ```terraform apply "terraform_docker_plan.out" ```
8. confirm the ngnix container running: ```docker ps```
9. ```curl -sL http://localhost:8080``` or Visit http://localhost:8080 (User the port configured in main.tf)
10. Remove the stack: ```terraform destroy```


## Setup cloud provider e.g. Azure
1. Login
    ```
    az account show
    ```
    If not logged-in
    ```
    az login
    az account set --subscription "azure-subscription-id"
    ```
2. Create Service Principle
    ```
    az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/azure-subscription-id"
    ```
    Save the output and run powershell e.g. ```.\azure_setup.ps1```
3. cd terraform-azure
```
terraform init --upgrade```
terraform plan -out "terraform_azure_plan.out"
terraform apply "terraform_azure_plan.out"
Confirm the creation of Resource Group in Region: "West US 2"
terraform destroy
``` 

## Bootstrap the project
Create Typescript project
```cdktf init ```
