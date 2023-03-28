# Configure the output for database 1
output "database1_id" {
  value =  azurerm_postgresql_database.database1.id
}

# Configure the output for database 2
output "database2_id" {
  value =  azurerm_postgresql_database.database2.id
}

# Configure the output for database 3
output "database3_id" {
  value =  azurerm_postgresql_database.database3.id
}