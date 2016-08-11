include theos/makefiles/common.mk


ARCHS = armv7 arm64 armv7s

BUNDLE_NAME = MuteIconPrefs
MuteIconPrefs_FILES = MuteIconPrefs.mm
MuteIconPrefs_INSTALL_PATH = /Library/PreferenceBundles
MuteIconPrefs_FRAMEWORKS = UIKit
MuteIconPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/MuteIconPrefs.plist$(ECHO_END)

internal-after-install::
	install.exec "killall -9 SpringBoard"