#! /usr/bin/env bash

# pickup the Azure subscription id
az account show 

# Create Service Principle for the subscription id
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"

export ARM_CLIENT_ID="<APPID_VALUE>"
export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"
export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
export ARM_TENANT_ID="<TENANT_VALUE>"

# OR for Windows Powershell
# $Env:ARM_CLIENT_ID = "<APPID_VALUE>"
# $Env:ARM_CLIENT_SECRET = "<PASSWORD_VALUE>"
# $Env:ARM_SUBSCRIPTION_ID = "<SUBSCRIPTION_ID>"
# $Env:ARM_TENANT_ID = "<TENANT_VALUE>"
