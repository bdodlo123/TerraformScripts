variable "zone_name" {
  description = "This is the name of the hosted zone."
  type        = string
  default     = ""
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
