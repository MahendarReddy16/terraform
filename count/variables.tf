variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend","middleware"]
}

variable "common-tags" {
    type = map
    default = {
    project = "expense"
    environment = "dev"
    terraform = "true"
    }
}