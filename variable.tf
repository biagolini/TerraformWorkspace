variable "instance_name" {
  description = "Name of the instance"
  type        = string
  default     = "WebServer"
}


variable "instance" {
  description = "Instance configuration per workspace"

  type = object({
    dev = object({
      ami    = string
      type   = string
      number = number
    })
    prod = object({
      ami    = string
      type   = string
      number = number
    })
  })

  default = {
    dev = {
      ami    = "ami-081b43f3353b07ae0"
      type   = "t2.micro"
      number = 1
    }
    prod = {
      ami    = "ami-081b43f3353b07ae0"
      type   = "t2.medium"
      number = 2
    }
  }
}



