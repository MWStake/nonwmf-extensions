#!/bin/sh

# Assuming you are just updating the .gitmodules file, and you want to
# populate the submodules from it (instead of using individual
# "git submodule add ..." for each repository), you can invoke this
# simple helper script with the following:

#     awk '/^\tpath/ {print $3} /^\turl/ {print $3}' .gitmodules | xargs -n 2 ./setup.sh

# Note that this means you have to a have the following format for .gitmodules:

# [submodule "name"]
# 	path = pathName
#	url = URL

# This order is used because it is the order that git uses by default
# at the time of this writing.

name=$1
url=$2

git submodule add $url $name
