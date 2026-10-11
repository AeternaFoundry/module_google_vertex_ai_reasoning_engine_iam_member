variable "vertex_ai_reasoning_engine_iam_members" {
  description = <<EOT
Map of vertex_ai_reasoning_engine_iam_members, attributes below
Required:
    - member
    - reasoning_engine
    - role
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member           = string
    reasoning_engine = string
    role             = string
    project          = optional(string)
    region           = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

