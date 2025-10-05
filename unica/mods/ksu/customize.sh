if [ -d $WORK_DIR/kernel/boot.img ]; then
	unpackbootimg --boot_img boot.img --output unpacked_boot
else
	echo "BOOTIMG NOT FOUND"
	exit 0
fi
lOG_STEP_IN -"SEARCHING FOR KSU"
LOG_STEP_OUT
if [ strings $WORK_DIR/kernel/unpacked_boot/Image | grep "ksu" ]; then
	LOG_STEP_IN "-KSU FOUND"
	if [ $TARGET_CODENAME = a21s ]; then
		curl -LJOs --output-dir $WORK_DIR/system/system/app https://github.com/samsungexynos850/atlas/releases/download/stable/KernelSU_v1.0.5-25-legacy-46-g652cd028_12279-release.apk
	else
		curl -LJOs --output-dir $WORK_DIR/system/system/app https://github.com/tiann/KernelSU/releases/download/v1.0.5/KernelSU_v1.0.5_12081-release.apk
	fi
else;
	LOG_STEP_IN "-KSU NOT FOUND"
	LOG_STEP_OUT
fi

