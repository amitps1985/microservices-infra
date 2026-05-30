resource_groups = {
  "rg1" = {
    name     = "apple-rg"
    location = "East US"

    tags = {
      Environment = "Dev"
      Project     = "Alpha"
    }
  }
}

container_registries = {
  "acr1" = {
    name                = "amitacr001"
    resource_group_name = "apple-rg"
    location            = "East US"
    sku                 = "Standard"
    admin_enabled       = true
    tags                = { Environment = "Dev", ManagedBy = "Terraform" }
  }
}

aks_clusters = {
  aks1 = {
    name                = "aks-dev-app1"
    resource_group_name = "apple-rg"
    location            = "East US"
    dns_prefix          = "aksdevapp1"

    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_DC2s_v3"
    }

    tags = {
      Environment = "Dev"
      Application = "App1"
    }
  }
}