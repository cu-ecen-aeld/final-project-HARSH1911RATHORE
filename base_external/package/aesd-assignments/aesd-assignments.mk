
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION =4302b1c8a6f8ccfc4090f4027da38f8e185a8ac0
AESD_ASSIGNMENTS_SITE =git@github.com:cu-ecen-5013/final-project-Kushagra42.git
AESD_ASSIGNMENTS_SITE_METHOD =git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/Temperature_i2c $(TARGET_DIR)/bin
#	$(INSTALL) -m 0755 $(@D)/Uart_raspi $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
