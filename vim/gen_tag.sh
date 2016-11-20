#!/bin/bash
PWD=`pwd`
cd $PWD
find -L "$PWD/drivers/" \
	"$PWD/linux/kernels/mips-linux-2.6.31/include/linux/" \
	"$PWD/apps/WTP/code/future/wss/" \
	"$PWD/apps/WTP/code/future/cfa2/" \
	"$PWD/apps/WTP/code/future/fsap2/" \
	"$PWD/apps/WTP/code/future/inc/" \
	"$PWD/apps/WTP/code/future/npapi/wasp/" \
	"$PWD/apps/WTP/code/future/util/nputil/" \
	"$PWD/apps/WTP/code/future/cli/" \
	"$PWD/apps/WTP/code/future/clidefs/" \
	"$PWD/apps/WTP/code/future/LR/" \
 	 -name "*.[chxsS]" -print > $PWD/cscope.files

ctags -L cscope.files
cscope -Rkbq
