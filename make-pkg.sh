#!/bin/bash
# A wrapper around makepkg
#
package_name="csb-polybar-conf"
makepkg -f
echo "Cleaning up..."
rm -rf pkg src "$package_name"
