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
Start Docker Desktop on Windows
Ensure Docker is running: ```docker info```
mkdir terraform-docker-container
cd terraform-docker-container
Refer Terraform script as main.tf
terraform init (or better: terraform init --upgrade)
terraform plan -out terraform_docker.out
terraform apply "terraform_docker.out"
confirm the ngnix container running: ```docker ps```
Visit http://localhost:8080 (User the port suggested in main.tf)
terraform destroy


## Bootstrap the project
Create Typescript project
cdktf init 