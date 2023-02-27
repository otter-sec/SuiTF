set -eux

COPYFILE_DISABLE=true tar --exclude-from=.gitignore -hczvf release.tar.gz release
rm -rf output
mkdir output
mv release.tar.gz ./output
cd output && tar xzvf release.tar.gz
