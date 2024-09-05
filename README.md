# RPI Carousel

Sets up a Raspberry Pi (Zero W 2) to display images in a sideshow for use as a marketing tool. Images can be loaded via an exposed Anonymous Samba Share.

## Usage:

* Create an Inventory File, for example:
```
[hosts]
100.90.0.1 ansible_connection=ssh ansible_ssh_user=cpressland
100.90.0.2 ansible_connection=ssh ansible_ssh_user=cpressland
100.90.0.3 ansible_connection=ssh ansible_ssh_user=cpressland
```
* Run the Playbook: `ansible-playbook -i inventory main.yaml`
* Reboot the Pi
* Add PNGs to the created Samba share on `smb://100.90.0.1/images`
