VENDOR_FOLDER := vendor/ti/omap4

ifeq ($(TARGET_BOARD_OMAP_CPU),4470)
	VENDOR_SGX_CORE := SGX544_112
else
	VENDOR_SGX_CORE := SGX540_120
endif

PRODUCT_COPY_FILES += \
	$(VENDOR_FOLDER)/proprietary/etc/powervr.ini:system/etc/powervr.ini \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/egl/libGLESv1_CM_POWERVR_$(VENDOR_SGX_CORE).so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/egl/libGLESv2_POWERVR_$(VENDOR_SGX_CORE).so:system/vendor/lib/egl/libGLESv2_POWERVR_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/hw/gralloc.omap$(TARGET_BOARD_OMAP_CPU).so:system/vendor/lib/hw/gralloc.omap$(TARGET_BOARD_OMAP_CPU).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libglslcompiler_$(VENDOR_SGX_CORE).so:system/vendor/lib/libglslcompiler_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libIMGegl_$(VENDOR_SGX_CORE).so:system/vendor/lib/libIMGegl_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libpvr2d_$(VENDOR_SGX_CORE).so:system/vendor/lib/libpvr2d_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libpvrANDROID_WSEGL_$(VENDOR_SGX_CORE).so:system/vendor/lib/libpvrANDROID_WSEGL_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libPVRScopeServices_$(VENDOR_SGX_CORE).so:system/vendor/lib/libPVRScopeServices_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libsrv_init_$(VENDOR_SGX_CORE).so:system/vendor/lib/libsrv_init_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libsrv_um_$(VENDOR_SGX_CORE).so:system/vendor/lib/libsrv_um_$(VENDOR_SGX_CORE).so \
	$(VENDOR_FOLDER)/proprietary/vendor/lib/libusc_$(VENDOR_SGX_CORE).so:system/vendor/lib/libusc_$(VENDOR_SGX_CORE).so

# Unset our vars.
VENDOR_FOLDER :=
VENDOR_SGX_CORE :=
