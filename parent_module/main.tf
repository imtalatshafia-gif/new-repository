module "resource_group" {
    source = "../child_module/resource_group"
    rgs = var.parentresource
}

module"storage_account" {
    
source="../child_module/storage_account"
    storage= var.parentstorage
depends_on=[module.resource_group]
}