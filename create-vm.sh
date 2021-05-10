#!/bin/bash

# Create a resource group.
az group create --name testing-script --location westeurope

# Create a general-purpose storage account in your resource group.
az storage account create \
    --resource-group testing-script \
    --name mystorageaccount \
    --location westeurope \
    --sku Standard_LRS

az vm open-port --port 80 --resource-group myResourceGroup --name myVM
