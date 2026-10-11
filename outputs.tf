output "endpoint_lookup_id" {
  description = "Map of id values across all endpoint_lookup, keyed the same as var.endpoint_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_endpoint.endpoint_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "endpoint_lookup_endpoints" {
  description = "Map of endpoints values across all endpoint_lookup, keyed the same as var.endpoint_lookup except keys with no endpoints are omitted"
  value       = { for k, v in data.confluent_endpoint.endpoint_lookup : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "endpoint_lookup_filter" {
  description = "Map of filter values across all endpoint_lookup, keyed the same as var.endpoint_lookup except keys with no filter are omitted"
  value       = { for k, v in data.confluent_endpoint.endpoint_lookup : k => one(v.filter) if v.filter != null && length(v.filter) > 0 }
}

