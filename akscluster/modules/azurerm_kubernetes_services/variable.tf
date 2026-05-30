variable "aks_clusters" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    dns_prefix          = string

    default_node_pool = object({
      name       = string
      node_count = number
      vm_size    = string
    })

    tags = map(string)
  }))
}