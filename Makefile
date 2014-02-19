ARCH=
VER=

message1 = Usage is:
message2 = make ARCH="32|64" VER="stable|testing|experimental" 
message3 = Alternative usage is:
message4 = make -f Makefile.32|64.stable|testing|experimental

all:
ifneq ($(ARCH),32)
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
else
ifneq ($(ARCH),64)
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
else
ifneq ($(VER),stable)
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
else
ifneq ($(VER),testing)
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
else
ifneq ($(VER),experimental)
	$(info $(message1))
	$(info $(message2))
	$(info )
	$(info $(message3))
	$(info $(message4))
else
	make -f Makefile.$(ARCH).$(VER)
endif
endif
endif
endif
endif
