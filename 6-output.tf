# ouputs

output "instance_external_ip" {
  value       = {
    vm1 = "http://${google_compute_instance.windows-instance-test1.network_interface[0].access_config[0].nat_ip}"
    vm2 = "http://${google_compute_instance.windows-instance-test2.network_interface[0].access_config[0].nat_ip}"

  }
  description = "The external IP address of the windows instance."
}



output "instance_private_ip" {
  value       = {
    vm1 = "http://${google_compute_instance.linux-instance-test1.network_interface[0].network_ip}"
    vm2 = "http://${google_compute_instance.linux-instance-test2.network_interface[0].network_ip}"
    vm3 = "http://${google_compute_instance.linux-instance-test3.network_interface[0].network_ip}"

  }
  description = "The internal IP address of the linux instance."
}