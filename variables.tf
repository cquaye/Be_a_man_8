variable "region_us" {
    default = "us-central"
    type    = string
    description = "region for us"
}

variable "region_asia"{
    default = "asia-northeast1"
    type    = string
    description = "region for japan"
}

variable "region_brazil" {
  default = "southamerica-east1"
  description = "region for brazil"
}


variable "us_cider_raange" {
    default = "10.69.10.0/24"
    type    = string
    description = "cider range for us subnetwork"
  
}

variable "asia_cider_range" {
    default = "10.69.50.0/24"
    type    = string
    description = "cider range for japan subnetwork"
  
}

variable "brazil_cider_range" {
    default = "10.69.30.0/24"
    type    = string
    description = "cider range for brazil subnetwork"
  
}

variable "medium" {
  type   = string
  description = "linux machine type"
}