LOG_STEP_IN "- Removing kernel modules in Vendor"
DELETE_FROM_WORK_DIR "vendor" "lib/modules"
LOG_STEP_IN "- Replacing Kernel with Rio"
rm -rf $WORK_DIR/kernel/*
cp -rf $SRC_DIR/prebuilts/kernels/rio/a52sxq/* "$WORK_DIR/kernel/"
LOG_STEP_OUT
LOG_STEP_OUT

