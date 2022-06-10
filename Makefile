
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = IGArabic

IGArabic_FILES = Tweak.xm
IGArabic_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
