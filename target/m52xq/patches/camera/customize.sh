LOG_STEP_IN
echo "- Add stock ueventd"
if ! grep -q "Camera End" "$WORK_DIR/vendor/ueventd.rc"; then
    echo "" >> "$WORK_DIR/vendor/ueventd.rc"
    cat "$SRC_DIR/target/m52xq/patches/camera/ueventd" >> "$WORK_DIR/vendor/ueventd.rc"
fi
LOG_STEP_OUT