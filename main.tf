data "confluent_endpoint" "endpoint_lookup" {
  for_each = var.endpoint_lookup


  filter {
    cloud = each.value.filter.cloud
    environment {
      id = each.value.filter.environment.id
    }
    is_private = each.value.filter.is_private
    region     = each.value.filter.region
    resource   = each.value.filter.resource
    service    = each.value.filter.service
  }
}

