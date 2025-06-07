variable "region_us" {
    default = "us-central"
    type    = string
}

variable "region_asia"{
    default = "asia-northeast1"
    type    = string
}

variable "region_brazil" {
  default = "southamerica-east1"
}


variable "us_cider_raange" {
    default = "10.69.10.0/24"
    type    = string
  
}

variable "asia_cider_range" {
    default = "10.69.50.0/24"
    type    = string
  
}

variable "brazil_cider_range" {
    default = "10.69.30.0/24"
    type    = string
  
}