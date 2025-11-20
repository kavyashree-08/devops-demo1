terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1" 
    }
  }
  required_version = ">= 1.0"
}

provider "random" {}

resource "random_pet" "demo" {
  length = 2
}

output "pet_name" {
  value = random_pet.demo.id
  description = "A randomly generated pet name (demo only)"
}
