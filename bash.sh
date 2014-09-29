#/bin/bash

# obfuscate with perl
echo "this is a test" | perl -MDigest::MD5 -ne 'print "$1 ".Digest::MD5::md5_hex($2)." $3" if /^([^ ]+) ([^ ]+) (.+)$/'
