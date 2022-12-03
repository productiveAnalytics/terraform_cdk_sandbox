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
4. terraform init (or better: terraform init --upgrade)
5. Refer Terraform & Docker script as main.tf
6. terraform plan -out terraform_docker.out
7. terraform apply "terraform_docker.out"
8. confirm the ngnix container running: ```docker ps```
9. Visit http://localhost:8080 (User the port suggested in main.tf)
10. terraform destroy


## Bootstrap the project
Create Typescript project
```cdktf init ```
