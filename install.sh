#!/bin/sh

die() {
    echo "$*" >&2
    exit 1
}

BASEDIR=$(dirname $0)
UDEVRULES="/etc/udev/rules.d/"

if [ ! -z "${EUID+x}" ]; then
	[ $EUID -eq 0 ] || die "You must run this script as root."
else
	[ "x`whoami`" == "xroot" ] || die "You must run this script as root."
fi

echo "Installing udev rules for Synapse devices"
cp ${BASEDIR}/udev/98-synapse.rules ${UDEVRULES} || \
    die "Failed to install to ${UDEVRULES}"

echo "Reloading udev rules to apply the Synapse rules"
udevadm control --reload-rules || \
    die "Failed to reload udev rules"

echo "Install complete"
exit 0
