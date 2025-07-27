LOG_STEP_IN "- Adding additional fs types."
sed -i \
    -e '/^system[[:space:]]\+\/system[[:space:]]\+\(erofs\|f2fs\)/d' \
    -e '/^\(system[[:space:]]\+\/system[[:space:]]\+\)ext4\([[:space:]].*\)$/s//\1ext4\2\n\1erofs\2\n\1f2fs\2/' \
    -e '/^\(\(system_ext\|vendor\|product\|odm\)[[:space:]]\+\/\2[[:space:]]\+\)f2fs\([[:space:]].*\)$/s//\1ext4\3\n\1erofs\3\n\1f2fs\3/' \
    $WORK_DIR/vendor/etc/fstab.qcom $WORK_DIR/vendor/etc/fstab.emmc
LOG_STEP_OUT
