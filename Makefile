ARCHS = arm64
TARGET = iphone:10.3:10.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UnderTime
UnderTime_FILES = Tweak.xm
UnderTime_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += undertime
include $(THEOS_MAKE_PATH)/aggregate.mk
