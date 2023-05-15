variable "parent_name" {
  type = string
  description = "The name of the parent zone. (e.g. zeet.app)"
} 

variable "delegate_name" {
  type = string
  description = "The name of the delegate zone. (e.g. sub.zeet.app)"
}

variable "delegate_name_servers" {
  type = list(string)
  description = "The list of nameservers for the delegate zone."
}
