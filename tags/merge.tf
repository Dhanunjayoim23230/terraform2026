
#merge tags syntax
locals {
  common_tags = {
    Environment = "staging"
    Project     = "MyApp"
  }

  instance_tags = {
    Name = "web-server-1"
    Role = "frontend"
  }

  merged_tags = merge(local.common_tags, local.instance_tags)
}

output "final_tags" {
  value = local.merged_tags
}

locals {
  default_config = {
    version = "1.0"
    enabled = true
  }

  override_config = {
    version = "2.0" # This value takes precedence
  }

  final_config = merge(local.default_config, local.override_config)
}

output "merged_version" {
  value = local.final_config.version
}

locals {
  list_of_maps = [
    { key1 = "value1" },
    { key2 = "value2" },
    { key3 = "value3" }
  ]
  
  merged_list_of_maps = merge(local.list_of_maps...)
}

output "dynamic_merge_result" {
  value = local.merged_list_of_maps
}

