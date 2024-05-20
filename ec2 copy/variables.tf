variable "ami_id" {
  description = "The AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.micro"
}

# Variables - Storage Account
 
variable "staList" {
  type        = map(any)
  description = "Storage Account List and related information"
  default = {
    "stadevr1abcd01" = {
      "createPrivateEndpoint" = true
      "resourceToConnect"     = "blob" # pick one from the variable 'azurePrivateDNS'
      "subnetName"            = "Data"
      "denyPublicAccess"      = true
    }
  }
}
