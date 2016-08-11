

TARGET := iphone:clang

TWEAK_NAME = MuteIcon
MuteIcon_FILES = Tweak.xm Settings.mm

export THEOS_PLATFORM_SDK_ROOT_armv6 = /Volumes/Xcode/Xcode.app/Contents/Developer
export SDKVERSION_armv6 = 5.1
export TARGET_IPHONEOS_DEPLOYMENT_VERSION = 4.2.1
export TARGET_IPHONEOS_DEPLOYMENT_VERSION_arm64 = 7.0 
export ARCHS = armv6 arm64
include /opt/theos/makefiles/common.mk

MuteIcon_FRAMEWORKS = UIKit
MuteIcon_CFLAGS = -Iinclude

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += muteiconprefs



include $(THEOS_MAKE_PATH)/aggregate.mk
