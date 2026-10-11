resource "google_vertex_ai_reasoning_engine_iam_member" "vertex_ai_reasoning_engine_iam_members" {
  for_each = var.vertex_ai_reasoning_engine_iam_members

  member           = each.value.member
  reasoning_engine = each.value.reasoning_engine
  role             = each.value.role
  project          = each.value.project
  region           = each.value.region

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

