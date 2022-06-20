alias pack='go tool pack'
WORK='./abs'
export GOARCH=386
export GOOS=linux
set -e

#
# internal/goarch
#

mkdir -p $WORK/b005/
cat >$WORK/b005/importcfg << 'EOF' # internal
# import config
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b005/_pkg_.a -trimpath "$WORK/b005=>" -p internal/goarch -std -+ -complete -buildid HDyD67WTln-BssVWHOsc/HDyD67WTln-BssVWHOsc -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b005/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/goarch/goarch.go /Users/pedrogao/softwares/go1.18/src/internal/goarch/goarch_386.go /Users/pedrogao/softwares/go1.18/src/internal/goarch/zgoarch_386.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b005/_pkg_.a # internal

#
# internal/unsafeheader
#

mkdir -p $WORK/b006/
cat >$WORK/b006/importcfg << 'EOF' # internal
# import config
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b006/_pkg_.a -trimpath "$WORK/b006=>" -p internal/unsafeheader -std -complete -buildid 507978_oKL9sr02h9Wsq/507978_oKL9sr02h9Wsq -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b006/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/unsafeheader/unsafeheader.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b006/_pkg_.a # internal

#
# internal/abi
#

mkdir -p $WORK/b009/
cat >$WORK/b009/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/internal/abi
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/abi -trimpath "$WORK/b009=>" -I $WORK/b009/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -gensymabis -o $WORK/b009/symabis ./abi_test.s
cat >$WORK/b009/importcfg << 'EOF' # internal
# import config
packagefile internal/goarch=$WORK/b005/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b009/_pkg_.a -trimpath "$WORK/b009=>" -p internal/abi -std -+ -buildid PTXWx_mkUPwvhYNfCH-e/PTXWx_mkUPwvhYNfCH-e -goversion go1.18 -symabis $WORK/b009/symabis -c=4 -nolocalimports -importcfg $WORK/b009/importcfg -pack -asmhdr $WORK/b009/go_asm.h /Users/pedrogao/softwares/go1.18/src/internal/abi/abi.go /Users/pedrogao/softwares/go1.18/src/internal/abi/abi_generic.go
cd /Users/pedrogao/softwares/go1.18/src/internal/abi
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/abi -trimpath "$WORK/b009=>" -I $WORK/b009/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b009/abi_test.o ./abi_test.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b009/_pkg_.a $WORK/b009/abi_test.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b009/_pkg_.a # internal

#
# internal/cpu
#

mkdir -p $WORK/b011/
cat >$WORK/b011/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/internal/cpu
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/cpu -trimpath "$WORK/b011=>" -I $WORK/b011/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -gensymabis -o $WORK/b011/symabis ./cpu.s ./cpu_x86.s
cat >$WORK/b011/importcfg << 'EOF' # internal
# import config
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b011/_pkg_.a -trimpath "$WORK/b011=>" -p internal/cpu -std -+ -buildid DMzXNRTypUe4VQY1s7sL/DMzXNRTypUe4VQY1s7sL -goversion go1.18 -symabis $WORK/b011/symabis -c=4 -nolocalimports -importcfg $WORK/b011/importcfg -pack -asmhdr $WORK/b011/go_asm.h /Users/pedrogao/softwares/go1.18/src/internal/cpu/cpu.go /Users/pedrogao/softwares/go1.18/src/internal/cpu/cpu_x86.go
cd /Users/pedrogao/softwares/go1.18/src/internal/cpu
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/cpu -trimpath "$WORK/b011=>" -I $WORK/b011/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b011/cpu.o ./cpu.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/cpu -trimpath "$WORK/b011=>" -I $WORK/b011/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b011/cpu_x86.o ./cpu_x86.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b011/_pkg_.a $WORK/b011/cpu.o $WORK/b011/cpu_x86.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b011/_pkg_.a # internal

#
# internal/bytealg
#

mkdir -p $WORK/b010/
cat >$WORK/b010/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/internal/bytealg
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/bytealg -trimpath "$WORK/b010=>" -I $WORK/b010/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -gensymabis -o $WORK/b010/symabis ./compare_386.s ./equal_386.s ./indexbyte_386.s
cat >$WORK/b010/importcfg << 'EOF' # internal
# import config
packagefile internal/cpu=$WORK/b011/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b010/_pkg_.a -trimpath "$WORK/b010=>" -p internal/bytealg -std -+ -buildid jvL6DzT2qr79LcTQEFg0/jvL6DzT2qr79LcTQEFg0 -goversion go1.18 -symabis $WORK/b010/symabis -c=4 -nolocalimports -importcfg $WORK/b010/importcfg -pack -asmhdr $WORK/b010/go_asm.h /Users/pedrogao/softwares/go1.18/src/internal/bytealg/bytealg.go /Users/pedrogao/softwares/go1.18/src/internal/bytealg/compare_native.go /Users/pedrogao/softwares/go1.18/src/internal/bytealg/count_generic.go /Users/pedrogao/softwares/go1.18/src/internal/bytealg/equal_generic.go /Users/pedrogao/softwares/go1.18/src/internal/bytealg/equal_native.go /Users/pedrogao/softwares/go1.18/src/internal/bytealg/index_generic.go /Users/pedrogao/softwares/go1.18/src/internal/bytealg/indexbyte_native.go
cd /Users/pedrogao/softwares/go1.18/src/internal/bytealg
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/bytealg -trimpath "$WORK/b010=>" -I $WORK/b010/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b010/compare_386.o ./compare_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/bytealg -trimpath "$WORK/b010=>" -I $WORK/b010/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b010/equal_386.o ./equal_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/bytealg -trimpath "$WORK/b010=>" -I $WORK/b010/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b010/indexbyte_386.o ./indexbyte_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b010/_pkg_.a $WORK/b010/compare_386.o $WORK/b010/equal_386.o $WORK/b010/indexbyte_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b010/_pkg_.a # internal

#
# internal/goexperiment
#

mkdir -p $WORK/b012/
cat >$WORK/b012/importcfg << 'EOF' # internal
# import config
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b012/_pkg_.a -trimpath "$WORK/b012=>" -p internal/goexperiment -std -complete -buildid f1oFT_ImpcwKx5n0SBLF/f1oFT_ImpcwKx5n0SBLF -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b012/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_fieldtrack_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_heapminimum512kib_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_pacerredesign_on.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_preemptibleloops_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_regabiargs_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_regabireflect_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_regabiwrappers_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_staticlockranking_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/exp_unified_off.go /Users/pedrogao/softwares/go1.18/src/internal/goexperiment/flags.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b012/_pkg_.a # internal

#
# internal/goos
#

mkdir -p $WORK/b013/
cat >$WORK/b013/importcfg << 'EOF' # internal
# import config
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b013/_pkg_.a -trimpath "$WORK/b013=>" -p internal/goos -std -+ -complete -buildid py6uy5NFuH0MeyjB4Hx8/py6uy5NFuH0MeyjB4Hx8 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b013/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/goos/goos.go /Users/pedrogao/softwares/go1.18/src/internal/goos/zgoos_linux.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b013/_pkg_.a # internal

#
# runtime/internal/atomic
#

mkdir -p $WORK/b014/
cat >$WORK/b014/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/runtime/internal/atomic
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime/internal/atomic -trimpath "$WORK/b014=>" -I $WORK/b014/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -gensymabis -o $WORK/b014/symabis ./atomic_386.s
cat >$WORK/b014/importcfg << 'EOF' # internal
# import config
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b014/_pkg_.a -trimpath "$WORK/b014=>" -p runtime/internal/atomic -std -+ -buildid 8SY4DBLy_4etIbBAUN1L/8SY4DBLy_4etIbBAUN1L -goversion go1.18 -symabis $WORK/b014/symabis -c=4 -nolocalimports -importcfg $WORK/b014/importcfg -pack -asmhdr $WORK/b014/go_asm.h /Users/pedrogao/softwares/go1.18/src/runtime/internal/atomic/atomic_386.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/atomic/doc.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/atomic/stubs.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/atomic/types.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/atomic/unaligned.go
cd /Users/pedrogao/softwares/go1.18/src/runtime/internal/atomic
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime/internal/atomic -trimpath "$WORK/b014=>" -I $WORK/b014/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b014/atomic_386.o ./atomic_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b014/_pkg_.a $WORK/b014/atomic_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b014/_pkg_.a # internal

#
# runtime/internal/math
#

mkdir -p $WORK/b015/
cat >$WORK/b015/importcfg << 'EOF' # internal
# import config
packagefile internal/goarch=$WORK/b005/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b015/_pkg_.a -trimpath "$WORK/b015=>" -p runtime/internal/math -std -+ -complete -buildid TADETo_vlNp19iaZ0hhm/TADETo_vlNp19iaZ0hhm -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b015/importcfg -pack /Users/pedrogao/softwares/go1.18/src/runtime/internal/math/math.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b015/_pkg_.a # internal

#
# runtime/internal/sys
#

mkdir -p $WORK/b016/
cat >$WORK/b016/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/runtime/internal/sys
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime/internal/sys -trimpath "$WORK/b016=>" -I $WORK/b016/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -gensymabis -o $WORK/b016/symabis ./intrinsics_386.s
cat >$WORK/b016/importcfg << 'EOF' # internal
# import config
packagefile internal/goarch=$WORK/b005/_pkg_.a
packagefile internal/goos=$WORK/b013/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b016/_pkg_.a -trimpath "$WORK/b016=>" -p runtime/internal/sys -std -+ -buildid PJIHeKSzghJza8cgcPI1/PJIHeKSzghJza8cgcPI1 -goversion go1.18 -symabis $WORK/b016/symabis -c=4 -nolocalimports -importcfg $WORK/b016/importcfg -pack -asmhdr $WORK/b016/go_asm.h /Users/pedrogao/softwares/go1.18/src/runtime/internal/sys/consts.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/sys/intrinsics_common.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/sys/intrinsics_stubs.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/sys/sys.go /Users/pedrogao/softwares/go1.18/src/runtime/internal/sys/zversion.go
cd /Users/pedrogao/softwares/go1.18/src/runtime/internal/sys
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime/internal/sys -trimpath "$WORK/b016=>" -I $WORK/b016/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b016/intrinsics_386.o ./intrinsics_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b016/_pkg_.a $WORK/b016/intrinsics_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b016/_pkg_.a # internal

#
# runtime/internal/syscall
#

mkdir -p $WORK/b017/
cat >$WORK/b017/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/runtime/internal/syscall
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime/internal/syscall -trimpath "$WORK/b017=>" -I $WORK/b017/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -gensymabis -o $WORK/b017/symabis ./asm_linux_386.s
cat >$WORK/b017/importcfg << 'EOF' # internal
# import config
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b017/_pkg_.a -trimpath "$WORK/b017=>" -p runtime/internal/syscall -std -buildid C-SrM_aEKfljxIxMqN8c/C-SrM_aEKfljxIxMqN8c -goversion go1.18 -symabis $WORK/b017/symabis -c=4 -nolocalimports -importcfg $WORK/b017/importcfg -pack -asmhdr $WORK/b017/go_asm.h /Users/pedrogao/softwares/go1.18/src/runtime/internal/syscall/syscall_linux.go
cd /Users/pedrogao/softwares/go1.18/src/runtime/internal/syscall
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime/internal/syscall -trimpath "$WORK/b017=>" -I $WORK/b017/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b017/asm_linux_386.o ./asm_linux_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b017/_pkg_.a $WORK/b017/asm_linux_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b017/_pkg_.a # internal

#
# runtime
#

mkdir -p $WORK/b008/
cat >$WORK/b008/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/runtime
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -gensymabis -o $WORK/b008/symabis ./asm.s ./asm_386.s ./duff_386.s ./memclr_386.s ./memmove_386.s ./preempt_386.s ./rt0_linux_386.s ./sys_linux_386.s ./vlop_386.s
cat >$WORK/b008/importcfg << 'EOF' # internal
# import config
packagefile internal/abi=$WORK/b009/_pkg_.a
packagefile internal/bytealg=$WORK/b010/_pkg_.a
packagefile internal/cpu=$WORK/b011/_pkg_.a
packagefile internal/goarch=$WORK/b005/_pkg_.a
packagefile internal/goexperiment=$WORK/b012/_pkg_.a
packagefile internal/goos=$WORK/b013/_pkg_.a
packagefile runtime/internal/atomic=$WORK/b014/_pkg_.a
packagefile runtime/internal/math=$WORK/b015/_pkg_.a
packagefile runtime/internal/sys=$WORK/b016/_pkg_.a
packagefile runtime/internal/syscall=$WORK/b017/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b008/_pkg_.a -trimpath "$WORK/b008=>" -p runtime -std -+ -buildid XrI1TZoVn1vs2zYFtVQa/XrI1TZoVn1vs2zYFtVQa -goversion go1.18 -symabis $WORK/b008/symabis -c=4 -nolocalimports -importcfg $WORK/b008/importcfg -pack -asmhdr $WORK/b008/go_asm.h /Users/pedrogao/softwares/go1.18/src/runtime/alg.go /Users/pedrogao/softwares/go1.18/src/runtime/asan0.go /Users/pedrogao/softwares/go1.18/src/runtime/atomic_pointer.go /Users/pedrogao/softwares/go1.18/src/runtime/cgo.go /Users/pedrogao/softwares/go1.18/src/runtime/cgocall.go /Users/pedrogao/softwares/go1.18/src/runtime/cgocallback.go /Users/pedrogao/softwares/go1.18/src/runtime/cgocheck.go /Users/pedrogao/softwares/go1.18/src/runtime/chan.go /Users/pedrogao/softwares/go1.18/src/runtime/checkptr.go /Users/pedrogao/softwares/go1.18/src/runtime/compiler.go /Users/pedrogao/softwares/go1.18/src/runtime/complex.go /Users/pedrogao/softwares/go1.18/src/runtime/cpuflags.go /Users/pedrogao/softwares/go1.18/src/runtime/cpuprof.go /Users/pedrogao/softwares/go1.18/src/runtime/cputicks.go /Users/pedrogao/softwares/go1.18/src/runtime/debug.go /Users/pedrogao/softwares/go1.18/src/runtime/debuglog.go /Users/pedrogao/softwares/go1.18/src/runtime/debuglog_off.go /Users/pedrogao/softwares/go1.18/src/runtime/defs_linux_386.go /Users/pedrogao/softwares/go1.18/src/runtime/env_posix.go /Users/pedrogao/softwares/go1.18/src/runtime/error.go /Users/pedrogao/softwares/go1.18/src/runtime/extern.go /Users/pedrogao/softwares/go1.18/src/runtime/fastlog2.go /Users/pedrogao/softwares/go1.18/src/runtime/fastlog2table.go /Users/pedrogao/softwares/go1.18/src/runtime/float.go /Users/pedrogao/softwares/go1.18/src/runtime/hash32.go /Users/pedrogao/softwares/go1.18/src/runtime/heapdump.go /Users/pedrogao/softwares/go1.18/src/runtime/histogram.go /Users/pedrogao/softwares/go1.18/src/runtime/iface.go /Users/pedrogao/softwares/go1.18/src/runtime/lfstack.go /Users/pedrogao/softwares/go1.18/src/runtime/lfstack_32bit.go /Users/pedrogao/softwares/go1.18/src/runtime/lock_futex.go /Users/pedrogao/softwares/go1.18/src/runtime/lockrank.go /Users/pedrogao/softwares/go1.18/src/runtime/lockrank_off.go /Users/pedrogao/softwares/go1.18/src/runtime/malloc.go /Users/pedrogao/softwares/go1.18/src/runtime/map.go /Users/pedrogao/softwares/go1.18/src/runtime/map_fast32.go /Users/pedrogao/softwares/go1.18/src/runtime/map_fast64.go /Users/pedrogao/softwares/go1.18/src/runtime/map_faststr.go /Users/pedrogao/softwares/go1.18/src/runtime/mbarrier.go /Users/pedrogao/softwares/go1.18/src/runtime/mbitmap.go /Users/pedrogao/softwares/go1.18/src/runtime/mcache.go /Users/pedrogao/softwares/go1.18/src/runtime/mcentral.go /Users/pedrogao/softwares/go1.18/src/runtime/mcheckmark.go /Users/pedrogao/softwares/go1.18/src/runtime/mem_linux.go /Users/pedrogao/softwares/go1.18/src/runtime/metrics.go /Users/pedrogao/softwares/go1.18/src/runtime/mfinal.go /Users/pedrogao/softwares/go1.18/src/runtime/mfixalloc.go /Users/pedrogao/softwares/go1.18/src/runtime/mgc.go /Users/pedrogao/softwares/go1.18/src/runtime/mgcmark.go /Users/pedrogao/softwares/go1.18/src/runtime/mgcpacer.go /Users/pedrogao/softwares/go1.18/src/runtime/mgcscavenge.go /Users/pedrogao/softwares/go1.18/src/runtime/mgcstack.go /Users/pedrogao/softwares/go1.18/src/runtime/mgcsweep.go /Users/pedrogao/softwares/go1.18/src/runtime/mgcwork.go /Users/pedrogao/softwares/go1.18/src/runtime/mheap.go /Users/pedrogao/softwares/go1.18/src/runtime/mmap.go /Users/pedrogao/softwares/go1.18/src/runtime/mpagealloc.go /Users/pedrogao/softwares/go1.18/src/runtime/mpagealloc_32bit.go /Users/pedrogao/softwares/go1.18/src/runtime/mpagecache.go /Users/pedrogao/softwares/go1.18/src/runtime/mpallocbits.go /Users/pedrogao/softwares/go1.18/src/runtime/mprof.go /Users/pedrogao/softwares/go1.18/src/runtime/mranges.go /Users/pedrogao/softwares/go1.18/src/runtime/msan0.go /Users/pedrogao/softwares/go1.18/src/runtime/msize.go /Users/pedrogao/softwares/go1.18/src/runtime/mspanset.go /Users/pedrogao/softwares/go1.18/src/runtime/mstats.go /Users/pedrogao/softwares/go1.18/src/runtime/mwbbuf.go /Users/pedrogao/softwares/go1.18/src/runtime/nbpipe_pipe2.go /Users/pedrogao/softwares/go1.18/src/runtime/netpoll.go /Users/pedrogao/softwares/go1.18/src/runtime/netpoll_epoll.go /Users/pedrogao/softwares/go1.18/src/runtime/os_linux.go /Users/pedrogao/softwares/go1.18/src/runtime/os_linux_generic.go /Users/pedrogao/softwares/go1.18/src/runtime/os_linux_noauxv.go /Users/pedrogao/softwares/go1.18/src/runtime/os_linux_x86.go /Users/pedrogao/softwares/go1.18/src/runtime/os_nonopenbsd.go /Users/pedrogao/softwares/go1.18/src/runtime/panic.go /Users/pedrogao/softwares/go1.18/src/runtime/panic32.go /Users/pedrogao/softwares/go1.18/src/runtime/plugin.go /Users/pedrogao/softwares/go1.18/src/runtime/preempt.go /Users/pedrogao/softwares/go1.18/src/runtime/preempt_nonwindows.go /Users/pedrogao/softwares/go1.18/src/runtime/print.go /Users/pedrogao/softwares/go1.18/src/runtime/proc.go /Users/pedrogao/softwares/go1.18/src/runtime/profbuf.go /Users/pedrogao/softwares/go1.18/src/runtime/proflabel.go /Users/pedrogao/softwares/go1.18/src/runtime/race0.go /Users/pedrogao/softwares/go1.18/src/runtime/rdebug.go /Users/pedrogao/softwares/go1.18/src/runtime/relax_stub.go /Users/pedrogao/softwares/go1.18/src/runtime/runtime.go /Users/pedrogao/softwares/go1.18/src/runtime/runtime1.go /Users/pedrogao/softwares/go1.18/src/runtime/runtime2.go /Users/pedrogao/softwares/go1.18/src/runtime/rwmutex.go /Users/pedrogao/softwares/go1.18/src/runtime/select.go /Users/pedrogao/softwares/go1.18/src/runtime/sema.go /Users/pedrogao/softwares/go1.18/src/runtime/sigaction.go /Users/pedrogao/softwares/go1.18/src/runtime/signal_386.go /Users/pedrogao/softwares/go1.18/src/runtime/signal_linux_386.go /Users/pedrogao/softwares/go1.18/src/runtime/signal_unix.go /Users/pedrogao/softwares/go1.18/src/runtime/sigqueue.go /Users/pedrogao/softwares/go1.18/src/runtime/sigqueue_note.go /Users/pedrogao/softwares/go1.18/src/runtime/sigtab_linux_generic.go /Users/pedrogao/softwares/go1.18/src/runtime/sizeclasses.go /Users/pedrogao/softwares/go1.18/src/runtime/slice.go /Users/pedrogao/softwares/go1.18/src/runtime/softfloat64.go /Users/pedrogao/softwares/go1.18/src/runtime/stack.go /Users/pedrogao/softwares/go1.18/src/runtime/string.go /Users/pedrogao/softwares/go1.18/src/runtime/stubs.go /Users/pedrogao/softwares/go1.18/src/runtime/stubs2.go /Users/pedrogao/softwares/go1.18/src/runtime/stubs3.go /Users/pedrogao/softwares/go1.18/src/runtime/stubs_386.go /Users/pedrogao/softwares/go1.18/src/runtime/stubs_linux.go /Users/pedrogao/softwares/go1.18/src/runtime/symtab.go /Users/pedrogao/softwares/go1.18/src/runtime/sys_nonppc64x.go /Users/pedrogao/softwares/go1.18/src/runtime/sys_x86.go /Users/pedrogao/softwares/go1.18/src/runtime/time.go /Users/pedrogao/softwares/go1.18/src/runtime/time_nofake.go /Users/pedrogao/softwares/go1.18/src/runtime/timestub.go /Users/pedrogao/softwares/go1.18/src/runtime/timestub2.go /Users/pedrogao/softwares/go1.18/src/runtime/tls_stub.go /Users/pedrogao/softwares/go1.18/src/runtime/trace.go /Users/pedrogao/softwares/go1.18/src/runtime/traceback.go /Users/pedrogao/softwares/go1.18/src/runtime/type.go /Users/pedrogao/softwares/go1.18/src/runtime/typekind.go /Users/pedrogao/softwares/go1.18/src/runtime/utf8.go /Users/pedrogao/softwares/go1.18/src/runtime/vdso_elf32.go /Users/pedrogao/softwares/go1.18/src/runtime/vdso_linux.go /Users/pedrogao/softwares/go1.18/src/runtime/vdso_linux_386.go /Users/pedrogao/softwares/go1.18/src/runtime/vlrt.go /Users/pedrogao/softwares/go1.18/src/runtime/write_err.go
cd /Users/pedrogao/softwares/go1.18/src/runtime
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/asm.o ./asm.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/asm_386.o ./asm_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/duff_386.o ./duff_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/memclr_386.o ./memclr_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/memmove_386.o ./memmove_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/preempt_386.o ./preempt_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/rt0_linux_386.o ./rt0_linux_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/sys_linux_386.o ./sys_linux_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p runtime -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b008/vlop_386.o ./vlop_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b008/_pkg_.a $WORK/b008/asm.o $WORK/b008/asm_386.o $WORK/b008/duff_386.o $WORK/b008/memclr_386.o $WORK/b008/memmove_386.o $WORK/b008/preempt_386.o $WORK/b008/rt0_linux_386.o $WORK/b008/sys_linux_386.o $WORK/b008/vlop_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b008/_pkg_.a # internal

#
# internal/reflectlite
#

mkdir -p $WORK/b004/
cat >$WORK/b004/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/internal/reflectlite
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/reflectlite -trimpath "$WORK/b004=>" -I $WORK/b004/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -gensymabis -o $WORK/b004/symabis ./asm.s
cat >$WORK/b004/importcfg << 'EOF' # internal
# import config
packagefile internal/goarch=$WORK/b005/_pkg_.a
packagefile internal/unsafeheader=$WORK/b006/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b004/_pkg_.a -trimpath "$WORK/b004=>" -p internal/reflectlite -std -buildid ruy79nD6WsJspXxGkvQ4/ruy79nD6WsJspXxGkvQ4 -goversion go1.18 -symabis $WORK/b004/symabis -c=4 -nolocalimports -importcfg $WORK/b004/importcfg -pack -asmhdr $WORK/b004/go_asm.h /Users/pedrogao/softwares/go1.18/src/internal/reflectlite/swapper.go /Users/pedrogao/softwares/go1.18/src/internal/reflectlite/type.go /Users/pedrogao/softwares/go1.18/src/internal/reflectlite/value.go
cd /Users/pedrogao/softwares/go1.18/src/internal/reflectlite
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p internal/reflectlite -trimpath "$WORK/b004=>" -I $WORK/b004/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b004/asm.o ./asm.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b004/_pkg_.a $WORK/b004/asm.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b004/_pkg_.a # internal

#
# errors
#

mkdir -p $WORK/b003/
cat >$WORK/b003/importcfg << 'EOF' # internal
# import config
packagefile internal/reflectlite=$WORK/b004/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b003/_pkg_.a -trimpath "$WORK/b003=>" -p errors -std -complete -buildid RqqTF09APzJyG0vJ6ZOb/RqqTF09APzJyG0vJ6ZOb -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b003/importcfg -pack /Users/pedrogao/softwares/go1.18/src/errors/errors.go /Users/pedrogao/softwares/go1.18/src/errors/wrap.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b003/_pkg_.a # internal

#
# internal/itoa
#

mkdir -p $WORK/b020/
cat >$WORK/b020/importcfg << 'EOF' # internal
# import config
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b020/_pkg_.a -trimpath "$WORK/b020=>" -p internal/itoa -std -complete -buildid qQduvwyy36aYyqb8NzKS/qQduvwyy36aYyqb8NzKS -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b020/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/itoa/itoa.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b020/_pkg_.a # internal

#
# math/bits
#

mkdir -p $WORK/b022/
cat >$WORK/b022/importcfg << 'EOF' # internal
# import config
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b022/_pkg_.a -trimpath "$WORK/b022=>" -p math/bits -std -complete -buildid kQgjDYMEe5B7adPeBzyF/kQgjDYMEe5B7adPeBzyF -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b022/importcfg -pack /Users/pedrogao/softwares/go1.18/src/math/bits/bits.go /Users/pedrogao/softwares/go1.18/src/math/bits/bits_errors.go /Users/pedrogao/softwares/go1.18/src/math/bits/bits_tables.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b022/_pkg_.a # internal

#
# math
#

mkdir -p $WORK/b021/
cat >$WORK/b021/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/math
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p math -trimpath "$WORK/b021=>" -I $WORK/b021/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -gensymabis -o $WORK/b021/symabis ./floor_386.s ./hypot_386.s ./sqrt_386.s
cat >$WORK/b021/importcfg << 'EOF' # internal
# import config
packagefile math/bits=$WORK/b022/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b021/_pkg_.a -trimpath "$WORK/b021=>" -p math -std -buildid LC9un0lG2aNE02JLs7To/LC9un0lG2aNE02JLs7To -goversion go1.18 -symabis $WORK/b021/symabis -c=4 -nolocalimports -importcfg $WORK/b021/importcfg -pack -asmhdr $WORK/b021/go_asm.h /Users/pedrogao/softwares/go1.18/src/math/abs.go /Users/pedrogao/softwares/go1.18/src/math/acosh.go /Users/pedrogao/softwares/go1.18/src/math/asin.go /Users/pedrogao/softwares/go1.18/src/math/asinh.go /Users/pedrogao/softwares/go1.18/src/math/atan.go /Users/pedrogao/softwares/go1.18/src/math/atan2.go /Users/pedrogao/softwares/go1.18/src/math/atanh.go /Users/pedrogao/softwares/go1.18/src/math/bits.go /Users/pedrogao/softwares/go1.18/src/math/cbrt.go /Users/pedrogao/softwares/go1.18/src/math/const.go /Users/pedrogao/softwares/go1.18/src/math/copysign.go /Users/pedrogao/softwares/go1.18/src/math/dim.go /Users/pedrogao/softwares/go1.18/src/math/dim_noasm.go /Users/pedrogao/softwares/go1.18/src/math/erf.go /Users/pedrogao/softwares/go1.18/src/math/erfinv.go /Users/pedrogao/softwares/go1.18/src/math/exp.go /Users/pedrogao/softwares/go1.18/src/math/exp2_noasm.go /Users/pedrogao/softwares/go1.18/src/math/exp_noasm.go /Users/pedrogao/softwares/go1.18/src/math/expm1.go /Users/pedrogao/softwares/go1.18/src/math/floor.go /Users/pedrogao/softwares/go1.18/src/math/floor_asm.go /Users/pedrogao/softwares/go1.18/src/math/fma.go /Users/pedrogao/softwares/go1.18/src/math/frexp.go /Users/pedrogao/softwares/go1.18/src/math/gamma.go /Users/pedrogao/softwares/go1.18/src/math/hypot.go /Users/pedrogao/softwares/go1.18/src/math/hypot_asm.go /Users/pedrogao/softwares/go1.18/src/math/j0.go /Users/pedrogao/softwares/go1.18/src/math/j1.go /Users/pedrogao/softwares/go1.18/src/math/jn.go /Users/pedrogao/softwares/go1.18/src/math/ldexp.go /Users/pedrogao/softwares/go1.18/src/math/lgamma.go /Users/pedrogao/softwares/go1.18/src/math/log.go /Users/pedrogao/softwares/go1.18/src/math/log10.go /Users/pedrogao/softwares/go1.18/src/math/log1p.go /Users/pedrogao/softwares/go1.18/src/math/log_stub.go /Users/pedrogao/softwares/go1.18/src/math/logb.go /Users/pedrogao/softwares/go1.18/src/math/mod.go /Users/pedrogao/softwares/go1.18/src/math/modf.go /Users/pedrogao/softwares/go1.18/src/math/modf_noasm.go /Users/pedrogao/softwares/go1.18/src/math/nextafter.go /Users/pedrogao/softwares/go1.18/src/math/pow.go /Users/pedrogao/softwares/go1.18/src/math/pow10.go /Users/pedrogao/softwares/go1.18/src/math/remainder.go /Users/pedrogao/softwares/go1.18/src/math/signbit.go /Users/pedrogao/softwares/go1.18/src/math/sin.go /Users/pedrogao/softwares/go1.18/src/math/sincos.go /Users/pedrogao/softwares/go1.18/src/math/sinh.go /Users/pedrogao/softwares/go1.18/src/math/sqrt.go /Users/pedrogao/softwares/go1.18/src/math/sqrt_asm.go /Users/pedrogao/softwares/go1.18/src/math/stubs.go /Users/pedrogao/softwares/go1.18/src/math/tan.go /Users/pedrogao/softwares/go1.18/src/math/tanh.go /Users/pedrogao/softwares/go1.18/src/math/trig_reduce.go /Users/pedrogao/softwares/go1.18/src/math/unsafe.go
cd /Users/pedrogao/softwares/go1.18/src/math
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p math -trimpath "$WORK/b021=>" -I $WORK/b021/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b021/floor_386.o ./floor_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p math -trimpath "$WORK/b021=>" -I $WORK/b021/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b021/hypot_386.o ./hypot_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p math -trimpath "$WORK/b021=>" -I $WORK/b021/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b021/sqrt_386.o ./sqrt_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b021/_pkg_.a $WORK/b021/floor_386.o $WORK/b021/hypot_386.o $WORK/b021/sqrt_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b021/_pkg_.a # internal

#
# unicode/utf8
#

mkdir -p $WORK/b024/
cat >$WORK/b024/importcfg << 'EOF' # internal
# import config
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b024/_pkg_.a -trimpath "$WORK/b024=>" -p unicode/utf8 -std -complete -buildid 86WtYIXy-LiWlCzTkFvz/86WtYIXy-LiWlCzTkFvz -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b024/importcfg -pack /Users/pedrogao/softwares/go1.18/src/unicode/utf8/utf8.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b024/_pkg_.a # internal

#
# strconv
#

mkdir -p $WORK/b023/
cat >$WORK/b023/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/bytealg=$WORK/b010/_pkg_.a
packagefile math=$WORK/b021/_pkg_.a
packagefile math/bits=$WORK/b022/_pkg_.a
packagefile unicode/utf8=$WORK/b024/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b023/_pkg_.a -trimpath "$WORK/b023=>" -p strconv -std -complete -buildid g2Lv0SEYXLzghAK0s0zu/g2Lv0SEYXLzghAK0s0zu -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b023/importcfg -pack /Users/pedrogao/softwares/go1.18/src/strconv/atob.go /Users/pedrogao/softwares/go1.18/src/strconv/atoc.go /Users/pedrogao/softwares/go1.18/src/strconv/atof.go /Users/pedrogao/softwares/go1.18/src/strconv/atoi.go /Users/pedrogao/softwares/go1.18/src/strconv/bytealg.go /Users/pedrogao/softwares/go1.18/src/strconv/ctoa.go /Users/pedrogao/softwares/go1.18/src/strconv/decimal.go /Users/pedrogao/softwares/go1.18/src/strconv/doc.go /Users/pedrogao/softwares/go1.18/src/strconv/eisel_lemire.go /Users/pedrogao/softwares/go1.18/src/strconv/ftoa.go /Users/pedrogao/softwares/go1.18/src/strconv/ftoaryu.go /Users/pedrogao/softwares/go1.18/src/strconv/isprint.go /Users/pedrogao/softwares/go1.18/src/strconv/itoa.go /Users/pedrogao/softwares/go1.18/src/strconv/quote.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b023/_pkg_.a # internal

#
# internal/race
#

mkdir -p $WORK/b026/
cat >$WORK/b026/importcfg << 'EOF' # internal
# import config
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b026/_pkg_.a -trimpath "$WORK/b026=>" -p internal/race -std -complete -buildid YRdO-WNFAGlDmcSniPca/YRdO-WNFAGlDmcSniPca -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b026/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/race/doc.go /Users/pedrogao/softwares/go1.18/src/internal/race/norace.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b026/_pkg_.a # internal

#
# sync/atomic
#

mkdir -p $WORK/b027/
cat >$WORK/b027/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/sync/atomic
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p sync/atomic -trimpath "$WORK/b027=>" -I $WORK/b027/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -gensymabis -o $WORK/b027/symabis ./asm.s
cat >$WORK/b027/importcfg << 'EOF' # internal
# import config
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b027/_pkg_.a -trimpath "$WORK/b027=>" -p sync/atomic -std -buildid qARpjmC6G-__tcA2UgkY/qARpjmC6G-__tcA2UgkY -goversion go1.18 -symabis $WORK/b027/symabis -c=4 -nolocalimports -importcfg $WORK/b027/importcfg -pack -asmhdr $WORK/b027/go_asm.h /Users/pedrogao/softwares/go1.18/src/sync/atomic/doc.go /Users/pedrogao/softwares/go1.18/src/sync/atomic/value.go
cd /Users/pedrogao/softwares/go1.18/src/sync/atomic
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p sync/atomic -trimpath "$WORK/b027=>" -I $WORK/b027/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -D GO386_sse2 -o $WORK/b027/asm.o ./asm.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b027/_pkg_.a $WORK/b027/asm.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b027/_pkg_.a # internal

#
# sync
#

mkdir -p $WORK/b025/
cat >$WORK/b025/importcfg << 'EOF' # internal
# import config
packagefile internal/race=$WORK/b026/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
packagefile sync/atomic=$WORK/b027/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b025/_pkg_.a -trimpath "$WORK/b025=>" -p sync -std -buildid GuDFiNrgKM_vz8j3ZJO8/GuDFiNrgKM_vz8j3ZJO8 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b025/importcfg -pack /Users/pedrogao/softwares/go1.18/src/sync/cond.go /Users/pedrogao/softwares/go1.18/src/sync/map.go /Users/pedrogao/softwares/go1.18/src/sync/mutex.go /Users/pedrogao/softwares/go1.18/src/sync/once.go /Users/pedrogao/softwares/go1.18/src/sync/pool.go /Users/pedrogao/softwares/go1.18/src/sync/poolqueue.go /Users/pedrogao/softwares/go1.18/src/sync/runtime.go /Users/pedrogao/softwares/go1.18/src/sync/runtime2.go /Users/pedrogao/softwares/go1.18/src/sync/rwmutex.go /Users/pedrogao/softwares/go1.18/src/sync/waitgroup.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b025/_pkg_.a # internal

#
# unicode
#

mkdir -p $WORK/b028/
cat >$WORK/b028/importcfg << 'EOF' # internal
# import config
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b028/_pkg_.a -trimpath "$WORK/b028=>" -p unicode -std -complete -buildid 5jMVIWtJ04UEQHJyWtfr/5jMVIWtJ04UEQHJyWtfr -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b028/importcfg -pack /Users/pedrogao/softwares/go1.18/src/unicode/casetables.go /Users/pedrogao/softwares/go1.18/src/unicode/digit.go /Users/pedrogao/softwares/go1.18/src/unicode/graphic.go /Users/pedrogao/softwares/go1.18/src/unicode/letter.go /Users/pedrogao/softwares/go1.18/src/unicode/tables.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b028/_pkg_.a # internal

#
# reflect
#

mkdir -p $WORK/b019/
cat >$WORK/b019/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/reflect
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p reflect -trimpath "$WORK/b019=>" -I $WORK/b019/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -gensymabis -o $WORK/b019/symabis ./asm_386.s
cat >$WORK/b019/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/abi=$WORK/b009/_pkg_.a
packagefile internal/bytealg=$WORK/b010/_pkg_.a
packagefile internal/goarch=$WORK/b005/_pkg_.a
packagefile internal/goexperiment=$WORK/b012/_pkg_.a
packagefile internal/itoa=$WORK/b020/_pkg_.a
packagefile internal/unsafeheader=$WORK/b006/_pkg_.a
packagefile math=$WORK/b021/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
packagefile strconv=$WORK/b023/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
packagefile unicode=$WORK/b028/_pkg_.a
packagefile unicode/utf8=$WORK/b024/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b019/_pkg_.a -trimpath "$WORK/b019=>" -p reflect -std -buildid xh_-8qFO1jQOv5P0HvWj/xh_-8qFO1jQOv5P0HvWj -goversion go1.18 -symabis $WORK/b019/symabis -c=4 -nolocalimports -importcfg $WORK/b019/importcfg -pack -asmhdr $WORK/b019/go_asm.h /Users/pedrogao/softwares/go1.18/src/reflect/abi.go /Users/pedrogao/softwares/go1.18/src/reflect/deepequal.go /Users/pedrogao/softwares/go1.18/src/reflect/float32reg_generic.go /Users/pedrogao/softwares/go1.18/src/reflect/makefunc.go /Users/pedrogao/softwares/go1.18/src/reflect/swapper.go /Users/pedrogao/softwares/go1.18/src/reflect/type.go /Users/pedrogao/softwares/go1.18/src/reflect/value.go /Users/pedrogao/softwares/go1.18/src/reflect/visiblefields.go
cd /Users/pedrogao/softwares/go1.18/src/reflect
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p reflect -trimpath "$WORK/b019=>" -I $WORK/b019/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b019/asm_386.o ./asm_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b019/_pkg_.a $WORK/b019/asm_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b019/_pkg_.a # internal

#
# sort
#

mkdir -p $WORK/b029/
cat >$WORK/b029/importcfg << 'EOF' # internal
# import config
packagefile internal/reflectlite=$WORK/b004/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b029/_pkg_.a -trimpath "$WORK/b029=>" -p sort -std -complete -buildid Z7PXc0whS7ZQwUxQGV_l/Z7PXc0whS7ZQwUxQGV_l -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b029/importcfg -pack /Users/pedrogao/softwares/go1.18/src/sort/search.go /Users/pedrogao/softwares/go1.18/src/sort/slice.go /Users/pedrogao/softwares/go1.18/src/sort/slice_go113.go /Users/pedrogao/softwares/go1.18/src/sort/sort.go /Users/pedrogao/softwares/go1.18/src/sort/zfuncversion.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b029/_pkg_.a # internal

#
# internal/fmtsort
#

mkdir -p $WORK/b018/
cat >$WORK/b018/importcfg << 'EOF' # internal
# import config
packagefile reflect=$WORK/b019/_pkg_.a
packagefile sort=$WORK/b029/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b018/_pkg_.a -trimpath "$WORK/b018=>" -p internal/fmtsort -std -complete -buildid LEwprhiyMB7iP7tyVSb1/LEwprhiyMB7iP7tyVSb1 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b018/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/fmtsort/sort.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b018/_pkg_.a # internal

#
# io
#

mkdir -p $WORK/b030/
cat >$WORK/b030/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b030/_pkg_.a -trimpath "$WORK/b030=>" -p io -std -complete -buildid FEwxbCULZBJ0j0uIDSY5/FEwxbCULZBJ0j0uIDSY5 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b030/importcfg -pack /Users/pedrogao/softwares/go1.18/src/io/io.go /Users/pedrogao/softwares/go1.18/src/io/multi.go /Users/pedrogao/softwares/go1.18/src/io/pipe.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b030/_pkg_.a # internal

#
# internal/oserror
#

mkdir -p $WORK/b032/
cat >$WORK/b032/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b032/_pkg_.a -trimpath "$WORK/b032=>" -p internal/oserror -std -complete -buildid 92FV7RQjoF0ch36r5ED6/92FV7RQjoF0ch36r5ED6 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b032/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/oserror/errors.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b032/_pkg_.a # internal

#
# syscall
#

mkdir -p $WORK/b035/
cat >$WORK/b035/go_asm.h << 'EOF' # internal
EOF
cd /Users/pedrogao/softwares/go1.18/src/syscall
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p syscall -trimpath "$WORK/b035=>" -I $WORK/b035/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -gensymabis -o $WORK/b035/symabis ./asm_linux_386.s
cat >$WORK/b035/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/bytealg=$WORK/b010/_pkg_.a
packagefile internal/itoa=$WORK/b020/_pkg_.a
packagefile internal/oserror=$WORK/b032/_pkg_.a
packagefile internal/race=$WORK/b026/_pkg_.a
packagefile internal/unsafeheader=$WORK/b006/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b035/_pkg_.a -trimpath "$WORK/b035=>" -p syscall -std -buildid bI4-L_co4_vXM-t0WJtx/bI4-L_co4_vXM-t0WJtx -goversion go1.18 -symabis $WORK/b035/symabis -c=4 -nolocalimports -importcfg $WORK/b035/importcfg -pack -asmhdr $WORK/b035/go_asm.h /Users/pedrogao/softwares/go1.18/src/syscall/asan0.go /Users/pedrogao/softwares/go1.18/src/syscall/dirent.go /Users/pedrogao/softwares/go1.18/src/syscall/endian_little.go /Users/pedrogao/softwares/go1.18/src/syscall/env_unix.go /Users/pedrogao/softwares/go1.18/src/syscall/exec_linux.go /Users/pedrogao/softwares/go1.18/src/syscall/exec_unix.go /Users/pedrogao/softwares/go1.18/src/syscall/flock.go /Users/pedrogao/softwares/go1.18/src/syscall/flock_linux_32bit.go /Users/pedrogao/softwares/go1.18/src/syscall/lsf_linux.go /Users/pedrogao/softwares/go1.18/src/syscall/msan0.go /Users/pedrogao/softwares/go1.18/src/syscall/net.go /Users/pedrogao/softwares/go1.18/src/syscall/netlink_linux.go /Users/pedrogao/softwares/go1.18/src/syscall/setuidgid_32_linux.go /Users/pedrogao/softwares/go1.18/src/syscall/sock_cloexec_linux.go /Users/pedrogao/softwares/go1.18/src/syscall/sockcmsg_linux.go /Users/pedrogao/softwares/go1.18/src/syscall/sockcmsg_unix.go /Users/pedrogao/softwares/go1.18/src/syscall/sockcmsg_unix_other.go /Users/pedrogao/softwares/go1.18/src/syscall/syscall.go /Users/pedrogao/softwares/go1.18/src/syscall/syscall_linux.go /Users/pedrogao/softwares/go1.18/src/syscall/syscall_linux_386.go /Users/pedrogao/softwares/go1.18/src/syscall/syscall_unix.go /Users/pedrogao/softwares/go1.18/src/syscall/time_nofake.go /Users/pedrogao/softwares/go1.18/src/syscall/timestruct.go /Users/pedrogao/softwares/go1.18/src/syscall/zerrors_linux_386.go /Users/pedrogao/softwares/go1.18/src/syscall/zsyscall_linux_386.go /Users/pedrogao/softwares/go1.18/src/syscall/zsysnum_linux_386.go /Users/pedrogao/softwares/go1.18/src/syscall/ztypes_linux_386.go
cd /Users/pedrogao/softwares/go1.18/src/syscall
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/asm -p syscall -trimpath "$WORK/b035=>" -I $WORK/b035/ -I /Users/pedrogao/softwares/go1.18/pkg/include -D GOOS_linux -D GOARCH_386 -compiling-runtime -D GO386_sse2 -o $WORK/b035/asm_linux_386.o ./asm_linux_386.s
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/pack r $WORK/b035/_pkg_.a $WORK/b035/asm_linux_386.o # internal
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b035/_pkg_.a # internal

#
# internal/syscall/unix
#

mkdir -p $WORK/b034/
cat >$WORK/b034/importcfg << 'EOF' # internal
# import config
packagefile sync/atomic=$WORK/b027/_pkg_.a
packagefile syscall=$WORK/b035/_pkg_.a
EOF
cd /Users/pedrogao/softwares/go1.18/minimal/examples
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b034/_pkg_.a -trimpath "$WORK/b034=>" -p internal/syscall/unix -std -complete -buildid -kssVwx90FFXuXMlfze2/-kssVwx90FFXuXMlfze2 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b034/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/at.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/at_sysnum_fstatat64_linux.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/at_sysnum_linux.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/copy_file_range_linux.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/fcntl_linux_32bit.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/getrandom.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/getrandom_linux.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/net.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/nonblocking.go /Users/pedrogao/softwares/go1.18/src/internal/syscall/unix/sysnum_linux_386.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b034/_pkg_.a # internal

#
# time
#

mkdir -p $WORK/b036/
cat >$WORK/b036/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
packagefile syscall=$WORK/b035/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b036/_pkg_.a -trimpath "$WORK/b036=>" -p time -std -buildid IUbNQns7rsApr6_y1t3w/IUbNQns7rsApr6_y1t3w -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b036/importcfg -pack /Users/pedrogao/softwares/go1.18/src/time/format.go /Users/pedrogao/softwares/go1.18/src/time/sleep.go /Users/pedrogao/softwares/go1.18/src/time/sys_unix.go /Users/pedrogao/softwares/go1.18/src/time/tick.go /Users/pedrogao/softwares/go1.18/src/time/time.go /Users/pedrogao/softwares/go1.18/src/time/zoneinfo.go /Users/pedrogao/softwares/go1.18/src/time/zoneinfo_read.go /Users/pedrogao/softwares/go1.18/src/time/zoneinfo_unix.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b036/_pkg_.a # internal

#
# internal/poll
#

mkdir -p $WORK/b033/
cat >$WORK/b033/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/syscall/unix=$WORK/b034/_pkg_.a
packagefile io=$WORK/b030/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
packagefile sync/atomic=$WORK/b027/_pkg_.a
packagefile syscall=$WORK/b035/_pkg_.a
packagefile time=$WORK/b036/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b033/_pkg_.a -trimpath "$WORK/b033=>" -p internal/poll -std -buildid 6k0T1gD6BqOAmeHNmxls/6k0T1gD6BqOAmeHNmxls -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b033/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/poll/copy_file_range_linux.go /Users/pedrogao/softwares/go1.18/src/internal/poll/errno_unix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fcntl_syscall.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fd.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fd_fsync_posix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fd_mutex.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fd_poll_runtime.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fd_posix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fd_unix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/fd_writev_unix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/hook_cloexec.go /Users/pedrogao/softwares/go1.18/src/internal/poll/hook_unix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/iovec_unix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/sendfile_linux.go /Users/pedrogao/softwares/go1.18/src/internal/poll/sock_cloexec.go /Users/pedrogao/softwares/go1.18/src/internal/poll/sockopt.go /Users/pedrogao/softwares/go1.18/src/internal/poll/sockopt_linux.go /Users/pedrogao/softwares/go1.18/src/internal/poll/sockopt_unix.go /Users/pedrogao/softwares/go1.18/src/internal/poll/sockoptip.go /Users/pedrogao/softwares/go1.18/src/internal/poll/splice_linux.go /Users/pedrogao/softwares/go1.18/src/internal/poll/writev.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b033/_pkg_.a # internal

#
# internal/syscall/execenv
#

mkdir -p $WORK/b037/
cat >$WORK/b037/importcfg << 'EOF' # internal
# import config
packagefile syscall=$WORK/b035/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b037/_pkg_.a -trimpath "$WORK/b037=>" -p internal/syscall/execenv -std -complete -buildid cxx7AGOnxR2oKd1b7Jy3/cxx7AGOnxR2oKd1b7Jy3 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b037/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/syscall/execenv/execenv_default.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b037/_pkg_.a # internal

#
# internal/testlog
#

mkdir -p $WORK/b038/
cat >$WORK/b038/importcfg << 'EOF' # internal
# import config
packagefile sync=$WORK/b025/_pkg_.a
packagefile sync/atomic=$WORK/b027/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b038/_pkg_.a -trimpath "$WORK/b038=>" -p internal/testlog -std -complete -buildid eNu5LBbqF-n-CLZCsoFB/eNu5LBbqF-n-CLZCsoFB -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b038/importcfg -pack /Users/pedrogao/softwares/go1.18/src/internal/testlog/exit.go /Users/pedrogao/softwares/go1.18/src/internal/testlog/log.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b038/_pkg_.a # internal

#
# path
#

mkdir -p $WORK/b040/
cat >$WORK/b040/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/bytealg=$WORK/b010/_pkg_.a
packagefile unicode/utf8=$WORK/b024/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b040/_pkg_.a -trimpath "$WORK/b040=>" -p path -std -complete -buildid wrGUBXZ8P0nhzrAg9jz6/wrGUBXZ8P0nhzrAg9jz6 -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b040/importcfg -pack /Users/pedrogao/softwares/go1.18/src/path/match.go /Users/pedrogao/softwares/go1.18/src/path/path.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b040/_pkg_.a # internal

#
# io/fs
#

mkdir -p $WORK/b039/
cat >$WORK/b039/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/oserror=$WORK/b032/_pkg_.a
packagefile io=$WORK/b030/_pkg_.a
packagefile path=$WORK/b040/_pkg_.a
packagefile sort=$WORK/b029/_pkg_.a
packagefile time=$WORK/b036/_pkg_.a
packagefile unicode/utf8=$WORK/b024/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b039/_pkg_.a -trimpath "$WORK/b039=>" -p io/fs -std -complete -buildid CYBbnB_sSMbKvvYnUOex/CYBbnB_sSMbKvvYnUOex -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b039/importcfg -pack /Users/pedrogao/softwares/go1.18/src/io/fs/fs.go /Users/pedrogao/softwares/go1.18/src/io/fs/glob.go /Users/pedrogao/softwares/go1.18/src/io/fs/readdir.go /Users/pedrogao/softwares/go1.18/src/io/fs/readfile.go /Users/pedrogao/softwares/go1.18/src/io/fs/stat.go /Users/pedrogao/softwares/go1.18/src/io/fs/sub.go /Users/pedrogao/softwares/go1.18/src/io/fs/walk.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b039/_pkg_.a # internal

#
# os
#

mkdir -p $WORK/b031/
cat >$WORK/b031/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/itoa=$WORK/b020/_pkg_.a
packagefile internal/oserror=$WORK/b032/_pkg_.a
packagefile internal/poll=$WORK/b033/_pkg_.a
packagefile internal/syscall/execenv=$WORK/b037/_pkg_.a
packagefile internal/syscall/unix=$WORK/b034/_pkg_.a
packagefile internal/testlog=$WORK/b038/_pkg_.a
packagefile internal/unsafeheader=$WORK/b006/_pkg_.a
packagefile io=$WORK/b030/_pkg_.a
packagefile io/fs=$WORK/b039/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
packagefile sort=$WORK/b029/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
packagefile sync/atomic=$WORK/b027/_pkg_.a
packagefile syscall=$WORK/b035/_pkg_.a
packagefile time=$WORK/b036/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b031/_pkg_.a -trimpath "$WORK/b031=>" -p os -std -buildid g5PvIVaLZBHsyJmgBDGI/g5PvIVaLZBHsyJmgBDGI -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b031/importcfg -pack /Users/pedrogao/softwares/go1.18/src/os/dir.go /Users/pedrogao/softwares/go1.18/src/os/dir_unix.go /Users/pedrogao/softwares/go1.18/src/os/dirent_linux.go /Users/pedrogao/softwares/go1.18/src/os/endian_little.go /Users/pedrogao/softwares/go1.18/src/os/env.go /Users/pedrogao/softwares/go1.18/src/os/error.go /Users/pedrogao/softwares/go1.18/src/os/error_errno.go /Users/pedrogao/softwares/go1.18/src/os/error_posix.go /Users/pedrogao/softwares/go1.18/src/os/exec.go /Users/pedrogao/softwares/go1.18/src/os/exec_posix.go /Users/pedrogao/softwares/go1.18/src/os/exec_unix.go /Users/pedrogao/softwares/go1.18/src/os/executable.go /Users/pedrogao/softwares/go1.18/src/os/executable_procfs.go /Users/pedrogao/softwares/go1.18/src/os/file.go /Users/pedrogao/softwares/go1.18/src/os/file_posix.go /Users/pedrogao/softwares/go1.18/src/os/file_unix.go /Users/pedrogao/softwares/go1.18/src/os/getwd.go /Users/pedrogao/softwares/go1.18/src/os/path.go /Users/pedrogao/softwares/go1.18/src/os/path_unix.go /Users/pedrogao/softwares/go1.18/src/os/pipe_linux.go /Users/pedrogao/softwares/go1.18/src/os/proc.go /Users/pedrogao/softwares/go1.18/src/os/rawconn.go /Users/pedrogao/softwares/go1.18/src/os/readfrom_linux.go /Users/pedrogao/softwares/go1.18/src/os/removeall_at.go /Users/pedrogao/softwares/go1.18/src/os/stat.go /Users/pedrogao/softwares/go1.18/src/os/stat_linux.go /Users/pedrogao/softwares/go1.18/src/os/stat_unix.go /Users/pedrogao/softwares/go1.18/src/os/sticky_notbsd.go /Users/pedrogao/softwares/go1.18/src/os/str.go /Users/pedrogao/softwares/go1.18/src/os/sys.go /Users/pedrogao/softwares/go1.18/src/os/sys_linux.go /Users/pedrogao/softwares/go1.18/src/os/sys_unix.go /Users/pedrogao/softwares/go1.18/src/os/tempfile.go /Users/pedrogao/softwares/go1.18/src/os/types.go /Users/pedrogao/softwares/go1.18/src/os/types_unix.go /Users/pedrogao/softwares/go1.18/src/os/wait_waitid.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b031/_pkg_.a # internal

#
# fmt
#

mkdir -p $WORK/b002/
cat >$WORK/b002/importcfg << 'EOF' # internal
# import config
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/fmtsort=$WORK/b018/_pkg_.a
packagefile io=$WORK/b030/_pkg_.a
packagefile math=$WORK/b021/_pkg_.a
packagefile os=$WORK/b031/_pkg_.a
packagefile reflect=$WORK/b019/_pkg_.a
packagefile strconv=$WORK/b023/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
packagefile unicode/utf8=$WORK/b024/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b002/_pkg_.a -trimpath "$WORK/b002=>" -p fmt -std -complete -buildid j1b6agYSV2CYvqmUjckm/j1b6agYSV2CYvqmUjckm -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b002/importcfg -pack /Users/pedrogao/softwares/go1.18/src/fmt/doc.go /Users/pedrogao/softwares/go1.18/src/fmt/errors.go /Users/pedrogao/softwares/go1.18/src/fmt/format.go /Users/pedrogao/softwares/go1.18/src/fmt/print.go /Users/pedrogao/softwares/go1.18/src/fmt/scan.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b002/_pkg_.a # internal

#
# github.com/pedrogao/minimalgo/examples
#

mkdir -p $WORK/b001/
cat >$WORK/b001/importcfg << 'EOF' # internal
# import config
packagefile fmt=$WORK/b002/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
EOF
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/compile -o $WORK/b001/_pkg_.a -trimpath "$WORK/b001=>" -p main -lang=go1.18 -complete -buildid a9j86O-ihd0DHZOdQnZa/a9j86O-ihd0DHZOdQnZa -goversion go1.18 -c=4 -nolocalimports -importcfg $WORK/b001/importcfg -pack ./main.go
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b001/_pkg_.a # internal
cat >$WORK/b001/importcfg.link << 'EOF' # internal
packagefile github.com/pedrogao/minimalgo/examples=$WORK/b001/_pkg_.a
packagefile fmt=$WORK/b002/_pkg_.a
packagefile runtime=$WORK/b008/_pkg_.a
packagefile errors=$WORK/b003/_pkg_.a
packagefile internal/fmtsort=$WORK/b018/_pkg_.a
packagefile io=$WORK/b030/_pkg_.a
packagefile math=$WORK/b021/_pkg_.a
packagefile os=$WORK/b031/_pkg_.a
packagefile reflect=$WORK/b019/_pkg_.a
packagefile strconv=$WORK/b023/_pkg_.a
packagefile sync=$WORK/b025/_pkg_.a
packagefile unicode/utf8=$WORK/b024/_pkg_.a
packagefile internal/abi=$WORK/b009/_pkg_.a
packagefile internal/bytealg=$WORK/b010/_pkg_.a
packagefile internal/cpu=$WORK/b011/_pkg_.a
packagefile internal/goarch=$WORK/b005/_pkg_.a
packagefile internal/goexperiment=$WORK/b012/_pkg_.a
packagefile internal/goos=$WORK/b013/_pkg_.a
packagefile runtime/internal/atomic=$WORK/b014/_pkg_.a
packagefile runtime/internal/math=$WORK/b015/_pkg_.a
packagefile runtime/internal/sys=$WORK/b016/_pkg_.a
packagefile runtime/internal/syscall=$WORK/b017/_pkg_.a
packagefile internal/reflectlite=$WORK/b004/_pkg_.a
packagefile sort=$WORK/b029/_pkg_.a
packagefile math/bits=$WORK/b022/_pkg_.a
packagefile internal/itoa=$WORK/b020/_pkg_.a
packagefile internal/oserror=$WORK/b032/_pkg_.a
packagefile internal/poll=$WORK/b033/_pkg_.a
packagefile internal/syscall/execenv=$WORK/b037/_pkg_.a
packagefile internal/syscall/unix=$WORK/b034/_pkg_.a
packagefile internal/testlog=$WORK/b038/_pkg_.a
packagefile internal/unsafeheader=$WORK/b006/_pkg_.a
packagefile io/fs=$WORK/b039/_pkg_.a
packagefile sync/atomic=$WORK/b027/_pkg_.a
packagefile syscall=$WORK/b035/_pkg_.a
packagefile time=$WORK/b036/_pkg_.a
packagefile unicode=$WORK/b028/_pkg_.a
packagefile internal/race=$WORK/b026/_pkg_.a
packagefile path=$WORK/b040/_pkg_.a
modinfo "0w\xaf\f\x92t\b\x02A\xe1\xc1\a\xe6\xd6\x18\xe6path\tgithub.com/pedrogao/minimalgo/examples\nmod\tgithub.com/pedrogao/minimalgo\t(devel)\t\nbuild\t-compiler=gc\nbuild\tCGO_ENABLED=0\nbuild\tGOARCH=386\nbuild\tGOOS=linux\nbuild\tGO386=sse2\n\xf92C1\x86\x18 r\x00\x82B\x10A\x16\xd8\xf2"
EOF
mkdir -p $WORK/b001/exe/
cd .
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/link -o $WORK/b001/exe/a.out -importcfg $WORK/b001/importcfg.link -buildmode=exe -buildid=HfmcGKdWx5OkSwv7Cimb/a9j86O-ihd0DHZOdQnZa/a9j86O-ihd0DHZOdQnZa/HfmcGKdWx5OkSwv7Cimb -tmpdir='./abs' -linkmode=external -extldflags='-nostdlib' -extld=clang $WORK/b001/_pkg_.a
/Users/pedrogao/softwares/go1.18/pkg/tool/darwin_amd64/buildid -w $WORK/b001/exe/a.out # internal
