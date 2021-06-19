set -e
cd dist
src=../openocd

cp -a $src/LICENSES .
cp $src/COPYING .

mkdir -p bin
cp $src/src/openocd bin
strip -s bin/openocd

mkdir -p scripts/interface
cp $src/tcl/interface/cmsis-dap.cfg scripts/interface

mkdir -p scripts/target
cp $src/tcl/target/efm32s2.cfg scripts/target
cp $src/tcl/target/swj-dp.tcl scripts/target