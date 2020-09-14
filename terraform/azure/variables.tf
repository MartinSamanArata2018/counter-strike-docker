variable "prefix" {
  description = "The prefix used for all resources"
  default     = "tf"
}

variable "location" {
  description = "The Azure location"
  default     = "East US"
}

variable "cpu" {
  description = "CPU assigned"
  default     = "2"
}

variable "ram" {
  description = "RAM assigned"
  default     = "4"
}
