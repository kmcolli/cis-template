provider "ibm" {
  #ibmcloud_api_key = "${var.ibmcloud_api_key}"
}
#################################################
# Identify CIS /Cloudflare Instance
#################################################

data "ibm_cis_domain" "mydomain" {
  domain = "${var.domain}"
  cis_id = "${var.cis_instance_id}"
}

resource "ibm_cis_dns_record" "cluster" {
  cis_id    = "${var.cis_instance_id}"
  domain_id = "${data.ibm_cis_domain.mydomain.id}"
  name      = "${var.host_name}.${var.domain}"
  content   = "${var.ingress_subdomain}"
  type      = "CNAME"
}
