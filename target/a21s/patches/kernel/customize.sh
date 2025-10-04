LOG "- Replacing stock kernel with atlas "
rm -f "$WORK_DIR/kernel/boot.img"
rm -f "$WORK_DIR/kernel/dtbo.img"
cp -fa "$SRC_DIR/target/a21s/patches/kernel/kernels/"*.img "$WORK_DIR/kernel/"
