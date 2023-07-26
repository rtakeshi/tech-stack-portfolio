provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "exampleResourceGroup"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "testdatalake"  # Nome da conta de armazenamento
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"      # Nível da conta de armazenamento
  account_replication_type = "LRS"           # Tipo de replicação
}

resource "azurerm_storage_container" "example" {
  name                  = "testcontainer"   # Nome do container de Blob
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"         # Nível de acesso do container (private, blob, container, etc.)
}

output "blob_storage_url" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}