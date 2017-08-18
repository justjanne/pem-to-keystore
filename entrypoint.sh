#!/bin/sh

# Setup

# Create combined Cert+Key from PEM files
cat $SRC_PATH_KEY $SRC_PATH_CRT > /tmp/cert.pem

# Create PKCS12 version of PEM input
openssl pkcs12 -export -out /tmp/cert.pkcs12 -in /tmp/cert.pem -passout pass:password

# Add PKCS12 version to the empty Java keystore
keytool -v -importkeystore -srckeystore /tmp/cert.pkcs12 -srcstoretype PKCS12 -destkeystore keystore -deststoretype JKS -storepass $TARGET_PASSWORD -srcstorepass password

# Move result to target location
mv keystore $TARGET_PATH_KEYSTORE

# Cleanup
rm /tmp/cert.pem
rm /tmp/cert.pkcs12
