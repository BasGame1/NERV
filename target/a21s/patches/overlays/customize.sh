LOG "- Fixing overlay "
rm -f "$WORK_DIR/product/overlay/SystemUI__r11sxxx__auto_generated_rro_product.apk"
cp -fa "$SRC_DIR/target/a21s/patches/overlays/product/overlay/"*.apk "$WORK_DIR/product/overlay"
