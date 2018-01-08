provider "openstack" {
  tenant_name = "crplab"
  auth_url    = "http://myopenstack.com"
}

resource "openstack_blockstorage_volume_v2" "volume_1" {
  name = "volume_1"
  size = 1
}

resource "openstack_compute_volume_attach_v2" "va_1" {
  instance_id = "03cc8da7-81c4-4c33-bb39-062a8d270b77"
  volume_id   = "${openstack_blockstorage_volume_v2.volume_1.id}"
}
