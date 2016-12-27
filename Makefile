MODULES := hello_driver.o

ARCH := arm64

CROSS_COMPILE := $(DROOT)/aarch64-linux-gnu-

obj-m := $(MODULES)

ROOTDIR := /home/hham/Projects/dragonboard410c/kernel

MAKEARCH := $(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE)

all: modules
modules:
	$(MAKEARCH) -C $(ROOTDIR) M=${shell pwd} modules

clean:
	$(MAKEARCH) -C $(ROOTDIR) M=${shell pwd} clean
