# Get all storage accounts in the subscription
$storageAccounts = Get-AzStorageAccount

# Loop through each storage account to get the containers
foreach ($storageAccount in $storageAccounts) {
    Write-Host "Checking Storage Account: $($storageAccount.StorageAccountName)"
    
    # Authenticate with the storage account to get containers
    $context = $storageAccount.Context
    $containers = Get-AzStorageContainer -Context $context
    
    foreach ($container in $containers) {
        Write-Host "Container: $($container.Name)"
    }
}
