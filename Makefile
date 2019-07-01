ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Animore
Animore_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

internal-stage::
	mkdir -p $(THEOS_STAGING_DIR)/System/Library/PrivateFrameworks/AvatarKit.framework/animoji/
	cp -R Resources/* "$(THEOS_STAGING_DIR)/System/Library/PrivateFrameworks/AvatarKit.framework/animoji/"

after-install::
	install.exec "killall -9 SpringBoard"
