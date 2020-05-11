
variable "domain" {
  default = "ibmcloudroks.net"
  description = "Domain to be used for cluster endpoint."
}

variable "cis_instance_id" {
   default = "crn:v1:bluemix:public:internet-svcs:global:a/7b3bb76daed742b3965e4a58ccd2be63:f91c58f4-0a4f-4418-ab63-16c8406c824c::"
   description = "CIS Instance ID to add cluster endpoint record to."
}

variable "ingress_subdomain" {
    description = "Kubernetes Ingress Subdomain"
}

variable "host_name" {
    description = "hostname of openshift project"
}