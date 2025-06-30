# Fix camera lock for devices with a rear SLSI sensor
echo "Patching camera HAL"
HAL_LIBS="
$WORK_DIR/vendor/lib/hw/camera.qcom.so
$WORK_DIR/vendor/lib/hw/com.qti.chi.override.so
$WORK_DIR/vendor/lib64/hw/camera.qcom.so
$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so
"
for f in $HAL_LIBS; do
    sed -i "s/ro.boot.flash.locked/ro.camera.notify_nfc/g" "$f"
done
{
    echo "libLttEngine.camera.samsung.so"
} >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"

echo "Fix MIDAS model detection"
sed -i "s/a52sxq/dummy/g" "$WORK_DIR/vendor/etc/midas/midas_config.json"
sed -i "s/a73xq/a52sxq/g" "$WORK_DIR/vendor/etc/midas/midas_config.json"
sed -i "s/ro.product.device/ro.product.vendor.device/g" "$WORK_DIR/vendor/etc/midas/midas_config.json"
