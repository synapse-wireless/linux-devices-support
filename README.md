Synapse Hardware Support for Linux
==================================

The purpose of this repository is to provide tweaks, settings, scripts,
and drivers to improve support for Synapse hardware devices under Linux.

Upstream Support
----------------

If you are using a kernel where support has been upstreamed then this is
unnecessary and the hardware will just work out of the box.

* Linux 4.1.0 and newer
* Ubuntu 15.04 and newer

Installation
------------

Run the `install.sh` as *root* or with `sudo` privileges. Your distro must
include the `ftdi_sio` and `cp210x` kernel modules for this to work correctly.
Most distros do include these.

This is unnecessary if
you are running Linux 4.1.0 or newer or have a distro that has backported the
following two patches:
* https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=4899c054a90439477b24da8977db8d738376fe90
* https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=b229a0f840f774d29d8fedbf5deb344ca36b7f1a
