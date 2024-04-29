output "app_ids" {
  value = { for k, v in zurerm_service_plan.example : k => v }
}
