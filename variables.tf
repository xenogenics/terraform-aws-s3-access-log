# Input Variable Configuration
#
# https://www.terraform.io/docs/configuration/variables.html

variable "name" {
  type        = "string"
  description = "The name of the bucket."
}

variable "versioning_enabled" {
  default     = true
  type        = "string"
  description = "Enable versioning. Versioning is a means of keeping multiple variants of an object in the same bucket."
}

variable "force_destroy" {
  default     = false
  type        = "string"
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error."
}
