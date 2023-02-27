set -eux

rm -rf output
mkdir output

cd release

for CHALL in {avalanche_alert,mile_high_city,your_secret_is_safe_with_us}; do
  COPYFILE_DISABLE=true tar --exclude-from=../.gitignore -hczvf $CHALL.tar.gz $CHALL
  mv $CHALL.tar.gz ../output/
done

cd ../output

for CHALL in {avalanche_alert,mile_high_city,your_secret_is_safe_with_us}; do
  tar xzvf $CHALL.tar.gz
done
