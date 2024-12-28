##############################################################
#
# CHARDRIVER
#
##############################################################
$(info    Start Build CHARDRIVER)
CHARDRIVER_VERSION = '5820be7ed23c39a0c67b2642bc2c94ca393ad441'
CHARDRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-marcoronk.git'
CHARDRIVER_SITE_METHOD = git
CHARDRIVER_GIT_SUBMODULES = YES
CHARDRIVER_MODULE_SUBDIRS = aesd-char-driver/

define CHARDRIVER_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar.ko $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
endef 


$(eval $(generic-package))
$(eval $(kernel-module))
$(info    End Build CHARDRIVER)

