# List resources containing a specific string in the name
az resource list --query "[?contains(name, 'sa')]" --output table

# List resources of a specific type
az resource list --resource-type "Microsoft.Storage/storageAccounts" --output table

# Get the id of a specific resource
az resource show --resource-group rg-demo-a-tj42 --name sademoatj42 --resource-type "Microsoft.Storage/storageAccounts" --query id --output tsv

# Creates a json file with the list of resources
az resource list --resource-group rg-demo-a-tj42 --output json > resources.json

# Remove a resource from terraform state (terraform state list)
terraform state rm module.storage.azurerm_storage_account.sa-demo-tj42

# Move a resource to another resource group
az resource move --destination-group rg-demo-b-tj42 --ids /subscriptions/7a3c6854-0fe1-42eb-b5b9-800af1e53d70/resourceGroups/rg-demo-a-tj42/providers/Microsoft.Storage/storageAccounts/sademoatj42