#!/bin/bash

# Create a resource group.
az group create --name testing-script --location westeurope

# Create a general-purpose storage account in your resource group.
az vm create \
  --resource-group "testing-script" \
  --name "myVM" \
  --image "UbuntuLTS" \
  --admin-username "azureuser" \
  --admin-password "azureuser@123" \
  --location westeurope

az vm open-port --port 80 --resource-group testing-script --name myVM
