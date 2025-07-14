terraform {  
  backend "oci" {
    bucket = "bucket-TE"
    key = "tf_demo_oci_backend.tfstate"
    namespace = "id3kvohtwgjy"
    config_file_profile = "DEFAULT"
    auth = "SecurityToken"
    region = "us-ashburn-1"    
  }
}

provider "oci" {
  region               = var.region
  auth                 = "SecurityToken"
  config_file_profile  = "DEFAULT"
}

resource "oci_core_virtual_network" "fvass_vcn" {
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
}
