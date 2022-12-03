# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_rg" {
  name     = "myTerraformRG"
  location = "westus2"
  tags = {
    environment = "Dev"
    usage = "development,testing"
    author = "Azure_Terraform"
    EnableNight = "False"
    EnableWeekend = "False"
    TimeZone = "America/New_York"
  }
}
