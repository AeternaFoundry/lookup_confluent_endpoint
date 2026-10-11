variable "endpoint_lookup" {
  description = <<EOT
Map of endpoint_lookup, attributes below
Required:
    - filter (block):
        - cloud (optional)
        - environment (required, block):
            - id (required)
        - is_private (optional)
        - region (optional)
        - resource (optional)
        - service (required)
EOT

  type = map(object({
    filter = object({
      cloud = optional(string)
      environment = object({
        id = string
      })
      is_private = optional(bool)
      region     = optional(string)
      resource   = optional(string)
      service    = string
    })
  }))
}

