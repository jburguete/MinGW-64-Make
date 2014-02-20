ARCH=
VER=

message1 = Usage is:
message2 = make ARCH="32|64" VER="stable|testing|experimental" 
message3 = Alternative usage is:
message4 = make -f Makefile.32|64.stable|testing|experimental

all:
ifeq ($(ARCH),32)
ifeq ($(VER),stable)
	make -f Makefile.$(ARCH).$(VER)
else
ifeq ($(VER),testing)
	make -f Makefile.$(ARCH).$(VER)
else
ifeq ($(VER),experimental)
	make -f Makefile.$(ARCH).$(VER)
else
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
endif
endif
endif
else
ifeq ($(ARCH),64)
ifeq ($(VER),stable)
	make -f Makefile.$(ARCH).$(VER)
else
ifeq ($(VER),testing)
	make -f Makefile.$(ARCH).$(VER)
else
ifeq ($(VER),experimental)
	make -f Makefile.$(ARCH).$(VER)
else
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
endif
endif
endif
else
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
endif
endif
