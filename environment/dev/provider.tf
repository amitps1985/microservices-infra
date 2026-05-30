terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # Aap apne requirement ke hisab se version update kar sakte hain
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "ca0e89ec-4b6f-43aa-93b2-058a2da5be0d"
}