####################
## List VM Images ##
####################

# Get latest Windows Server 2022 Virtual Machine image
data "oci_core_images" "windows-2022" {
  compartment_id = oci_identity_compartment.compartment.id
  operating_system = "Windows"
  filter {
    name = "display_name"
    values = ["^Windows-Server-2022-Standard-Edition-VM-([\\.0-9-]+)$"]
    regex  = true
  }
}

output "windows-2022-latest-image-name" {
  value = data.oci_core_images.windows-2022.images.0.display_name
}

output "windows-2022-latest-image-id" {
  value = data.oci_core_images.windows-2022.images.0.id
}