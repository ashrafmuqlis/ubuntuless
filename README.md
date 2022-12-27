# ubuntuless
Notes about the Ubuntu Server 22.04 box. How to's, etc

What you need to run this box:
- Vagrant
- Any VM host app (hyper-v, oracle virtual box, and vmware)
- Internet

This box has 3 providers:
1) hyperv
2) virtualbox
3) vmware_desktop

How to deploy:
1) navigate to a folder
2) add the vagrant box: $vagrant box add ashrafmuqlis/ubuntuless
3) select provider
4) once downloaded, $vagrant init ashrafmuqlis/ubuntuless
5) finally call up the vm, $vagrant up
6) connect via SSH, $vagrant ssh

Quirks of each providers:
1) hyperv - use CMD with administrative privileges. once "==> default: Machine booted and ready!" status, VM is already booted up. escape prompt with ctrl+c.
2) virtualbox - once vagrant up, command line may timeout but the VM should be running. Check the VirtualBox GUI(show). may require port forwarding for SSH.
3) vmware_desktop - status may show issues with network adapter. ignore it, as it runs as intended.

All these providers are configured with NAT as default network adapter. You will notice each provider will have a different IP address, no worries.

Happy provisioning!


    
