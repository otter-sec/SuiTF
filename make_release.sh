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

# setup for baby_rev
mkdir baby_rev
cd ../baby_rev && sui move build
cp ./build/baby_rev/bytecode_modules/chall.mv ../output/baby_rev/chall.mv
cd ../output

# setup for follow_the_constraints
mkdir follow_the_constraints
cd ../follow_the_constraints && sui move build
cp ./build/follow_the_constraints/bytecode_modules/constraints.mv ../output/follow_the_constraints/constraints.mv
cd ../output
