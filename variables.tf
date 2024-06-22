variable "project_name" {
  type = string
}

variable "project_environment" {
  type = string
}

variable "ami_instance" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "volume_size" {
  type    = number
  default = 15
}

variable "sg_ports_in" {
  type    = list(number)
  default = [22, 80, 443]
}

variable "sg_ports_out" {
  type    = list(number)
  default = [0]
}

variable "use_cloudwatch_alarms" {
  type    = bool
  default = true
}

variable "cloudwatch_period_check_minutes" {
  type    = number
  default = 15
}

variable "cpu_utilization_evaluation_periods" {
  type    = number
  default = 2
}

variable "cloudwatch_threshold_cpu_utilization" {
  type    = number
  default = 95
}

variable "status_check_failed_evaluation_periods" {
  type    = number
  default = 1
}
