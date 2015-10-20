vm-ftp
===========


Prerequisites and download
==========================

Git is used to download the project. VirtualBox and Vagrant are used to run it.
On Debian-based systems, something like the following should install everything
necessary:

```
$ sudo apt-get install git virtualbox vagrant
```

To download the project, run the following:

```
git clone https://github.com/briansteffens/vm-dns
cd vm-dns
cp -r local.example/ local/
```


Configuration
=============

The contents of vm-dns/local will be copied into the VM's /etc/bind/ directory.
Copy vm-dns/local.example to vm-dns/local and customize it before building the
VM.


Building the VM
===============

Make sure you're in the root of the git repository (probably the folder
`vm-dns/`) and run:

```
$ vagrant up
```

Full rebuild:

```
$ vagrant destroy -f && vagrant up
```
