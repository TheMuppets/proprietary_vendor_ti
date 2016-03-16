$(call inherit-product, vendor/ti/omap4/omap4-vendor-blobs.mk)

ifeq ($(TARGET_BOARD_OMAP_CPU),4470)
	VENDOR_SGX_CORE := SGX544_112
else ifeq ($(TARGET_BOARD_OMAP_CPU),4460)
	VENDOR_SGX_CORE := SGX540_120
else ifeq ($(TARGET_BOARD_OMAP_CPU),4430)
	VENDOR_SGX_CORE := SGX540_120
endif

PRODUCT_PACKAGES += \
	libglslcompiler_$(VENDOR_SGX_CORE) \
	libIMGegl_$(VENDOR_SGX_CORE) \
	libpvr2d_$(VENDOR_SGX_CORE) \
	libpvrANDROID_WSEGL_$(VENDOR_SGX_CORE) \
	libPVRScopeServices_$(VENDOR_SGX_CORE) \
	libsrv_init_$(VENDOR_SGX_CORE) \
	libsrv_um_$(VENDOR_SGX_CORE) \
	libusc_$(VENDOR_SGX_CORE) \
	libGLESv1_CM_POWERVR_$(VENDOR_SGX_CORE) \
	libGLESv2_POWERVR_$(VENDOR_SGX_CORE) \
	gralloc.omap$(TARGET_BOARD_OMAP_CPU)
