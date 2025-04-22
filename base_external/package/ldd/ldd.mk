LDD_VERSION = 6071b8d7a3185ae2df97348ac16cffc23809012d
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-gordongu.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))
$(eval $(generic-package))
