##############################################################
#
# AESDCHAR
#
##############################################################
$(info    Start Build AESDCHAR)
AESDCHAR_VERSION = 'e536ebeb8fedbb58e625691a779916850e96c61c'
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-marcoronk.git'           
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS += aesd-char-driver
AESDCHAR_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)
define AESDCHAR_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar.ko $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
endef 

$(eval $(kernel-module))
$(eval $(generic-package))
$(info    End Build AESDCHAR)