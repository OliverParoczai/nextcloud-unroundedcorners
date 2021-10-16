#!/bin/bash
#Automatic buildscript for Nextcloud apps
#Made by @OliverParoczai
#Requires git, xmlstarlet, tar, and optionally openssl

REPOURL="https://github.com/OliverParoczai/nextcloud-unroundedcorners.git" #official repo, change if forked
SIGN=FALSE #Sign the file for uploading to the official appstore
SIGNCERT=~/.nextcloud/certificates/unroundedcorners.key #The location of the key

mkdir tmp

echo "Cloning $REPOURL"
git clone -q $REPOURL tmp/unroundedcorners/
VERSION=$(xmlstarlet sel -T -t -m '//info/version' -v . -n tmp/unroundedcorners/appinfo/info.xml)
echo "Version is ${VERSION}"

echo "Starting compression"
tar --exclude='code' --exclude='differences.png' --exclude=".git" -czf unroundedcorners-v${VERSION}.tar.gz -C tmp unroundedcorners/

rm -rf tmp

if [ $SIGN ]; then
	echo ""
	echo "The signature:"
	echo ""
	openssl dgst -sha512 -sign $SIGNCERT unroundedcorners-v${VERSION}.tar.gz | openssl base64
	echo ""
fi
