Synapse Hardware Support for Linux
==================================

The purpose of this repository is to provide tweaks, settings, scripts,
and drivers to improve support for Synapse hardware devices under Linux.

Upstream Support
----------------

If you are using a kernel where support has been upstreamed then this is
unnecessary and the hardware will just work out of the box.

* Linux 4.0.0 and newer
* Ubuntu 15.10 and newer
* Ubuntu 15.04 (linux-image-3.19.0-17 and newer)
* Ubuntu 14.10 (linux-image-3.16.0-38 and newer)
* Ubuntu 14.04 (linux-image-3.13.0-54 and newer)

Stable kernel trees where the patch was included:

* 3.19.5
* 3.18.13
* 3.16.7-ckt10
* 3.14.39
* 3.13.11-ckt20
* 3.12.41
* 3.10.75
* 3.4.108
* 3.2.69

Additionally any kernel that has the following two patches render this
unnecessary:

* https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=4899c054a90439477b24da8977db8d738376fe90
* https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=b229a0f840f774d29d8fedbf5deb344ca36b7f1a


Installation
------------

Run the `install.sh` as *root* or with `sudo` privileges. Your distro must
include the `ftdi_sio` and `cp210x` kernel modules for this to work correctly.
Most distros do include these.

