variable "region" {
  description = "Primary region for Aurora deployment"
  type        = string
  default     = "eu-west-2"
}

variable "dr_region" {
  description = "Disaster recovery region"
  type        = string
  default     = "eu-west-1"
}
