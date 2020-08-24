#/bin/bash

usage() {
    echo "Usage: sudo $0 <Path to firmware> <ROM NAME>"
    echo -e "\tPath to firmware: the zip!"
    echo -e "\tROM NAME: the rom's name!"
}

if [ "$1" == "" ]; then
    echo "ERROR: Enter all needed parameters"
    usage
    exit 1
fi

mkdir -p output
LOCALDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
HOST="$(uname)"
romzip="$(realpath $1)"
romname="$2"
outdir="$LOCALDIR/output"
toolsdir="$LOCALDIR/tools"

echo "Unpacking the rom..."
sudo bash "$LOCALDIR"/unpack.sh "$romzip"

echo "Unpacking finished."
echo ""
echo ""
