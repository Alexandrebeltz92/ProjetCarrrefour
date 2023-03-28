# Configure the ressource group
resource "azurerm_resource_group" "resource_group" {
  name     = "postgresql-rg"
  location = "West Europe"
}

# Configure the postgresql server
resource "azurerm_postgresql_server" "server" {
  name                = "postgresql-server-uniware"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "user"
  administrator_login_password = "Formation2022+"
  version                      = "9.5"
  ssl_enforcement_enabled      = true
}

# Configure the postgresql database 1
resource "azurerm_postgresql_database" "database1" {
  name                = "exampledb1"
  resource_group_name = azurerm_resource_group.resource_group.name
  server_name         = azurerm_postgresql_server.server.name
  charset             = "UTF8"
  collation           = "French_France.1252"
  # collation = "English_United States.1252"
}

# Configure the postgresql database 2
resource "azurerm_postgresql_database" "database2" {
  name                = "exampledb2"
  resource_group_name = azurerm_resource_group.resource_group.name
  server_name         = azurerm_postgresql_server.server.name
  charset             = "UTF8"
  collation           = "French_France.1252"
  # collation = "English_United States.1252"
}

# Configure the postgresql database 3
resource "azurerm_postgresql_database" "database3" {
  name                = "exampledb3"
  resource_group_name = azurerm_resource_group.resource_group.name
  server_name         = azurerm_postgresql_server.server.name
  charset             = "UTF8"
  collation           = "French_France.1252"
  # collation = "English_United States.1252"
}

# Configure the postgresql firewall for access from all ips
resource "azurerm_postgresql_firewall_rule" "all_ips" {
  name                = "allow-all-ips"
  resource_group_name = azurerm_resource_group.resource_group.name
  server_name         = azurerm_postgresql_server.server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}
