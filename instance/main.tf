provider "openstack" {
  tenant_name = "crplab"
  auth_url    = "http://myopenstack.com"
}

resource "openstack_compute_instance_v2" "basic" {
  name            = "basic"
  image_id        = "5ad7a233-8f2b-4711-9e8d-65317b048cd9"
  flavor_id       = "2"
  key_pair        = "devops"
  security_groups = ["default", "secgroup_1"]

  network {
    name = "flat-provider-network"
  }

}
