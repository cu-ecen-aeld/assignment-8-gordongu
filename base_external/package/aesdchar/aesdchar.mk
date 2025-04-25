AESDCHAR_VERSION = '4e6874ccb0f8b83fd4f715aa5c1edca4d6d2cf80'
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-gordongu.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

# Add aesdchar module and build
AESDCHAR_MODULE_SUBDIRS += aesd-char-driver

# Add aesdchar load and unload scripts
define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
