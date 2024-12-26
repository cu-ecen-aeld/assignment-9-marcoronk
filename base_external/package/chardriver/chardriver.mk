##############################################################
#
# CHARDRIVER
#
##############################################################
$(info    Start Build CHARDRIVERDRIVER)
CHARDRIVER_VERSION = 'e536ebeb8fedbb58e625691a779916850e96c61c'
CHARDRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-marcoronk.git'           
CHARDRIVER_SITE_METHOD = git
CHARDRIVER_GIT_SUBMODULES = YES
CHARDRIVER_MODULE_SUBDIRS += aesd-char-driver
#CHARDRIVER_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define CHARDRIVER_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar.ko $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
endef 

$(eval $(kernel-module))
$(eval $(generic-package))
$(info    End Build CHARDRIVERDRIVER)
