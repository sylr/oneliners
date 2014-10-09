#/bin/bash

# obfuscate with perl
echo "this is a test" | perl -MDigest::MD5 -ne 'print "$1 ".Digest::MD5::md5_hex($2)." $3\n" if /^([^ ]+) ([^ ]+) (.+)$/'

# obfuscate strings which look like uniq id
perl -MDigest::MD5 -pe 's/([a-zA-Z0-9-\*]{20,})/Digest::MD5::md5_hex($1);/eg' < input > output
