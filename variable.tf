variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-northeast-1"
}

variable "acm_certificate_arn" {
  description = "The ARN of the ACM certificate to use"
  type        = string
  default     = "arn:aws:acm:ap-northeast-1:1234567890:certificate/08a1bbff-8866-4781-8721-2b1bbc079bf4"
}

variable "availability_zones" {
  description = "The Availability Zones to use"
  type        = list(string)
  default     = ["ap-northeast-1a", "ap-northeast-1c"]
}

