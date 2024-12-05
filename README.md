```sh
host   $ docker run -it --rm -v$(pwd):/work -w /work swift:6.0.2 bash
docker $ swift build -c release --static-swift-stdlib -v
...
Planning build
Building for production...
...
 "/usr/bin/ld.gold" -pie -EL --hash-style=gnu --eh-frame-hdr -m aarch64linux -dynamic-linker /lib/ld-linux-aarch64.so.1 -o /work/.build/aarch64-unknown-linux-gnu/release/exe /lib/aarch64-linux-gnu/Scrt1.o /lib/aarch64-linux-gnu/crti.o /usr/bin/../lib/gcc/aarch64-linux-gnu/13/crtbeginS.o -L/usr/lib/swift_static/linux -L/work/.build/aarch64-unknown-linux-gnu/release -L/usr/bin/../lib/gcc/aarch64-linux-gnu/13 -L/lib/aarch64-linux-gnu -L/usr/lib/aarch64-linux-gnu -L/lib -L/usr/lib /usr/lib/swift_static/linux/aarch64/swiftrt.o --start-group /work/.build/aarch64-unknown-linux-gnu/release/CxxCats.build/CxxCats.cpp.o /work/.build/aarch64-unknown-linux-gnu/release/Demo.build/Demo.swift.o /work/.build/aarch64-unknown-linux-gnu/release/exe.build/main.swift.o -lstdc++ -lswiftCxx -lswiftCxxStdlib -lstdc++ -lswiftCxx -lswiftCxxStdlib -lswiftCore -lswift_Concurrency -lswift_StringProcessing -lswift_RegexParser --end-group -ldl -lpthread -lswiftCore -ldispatch -lBlocksRuntime -lstdc++ -lm -export-dynamic --exclude-libs ALL -lstdc++ --gc-sections --defsym main=exe_main "-rpath=\$ORIGIN" -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as-needed /usr/bin/../lib/gcc/aarch64-linux-gnu/13/crtendS.o /lib/aarch64-linux-gnu/crtn.o
/usr/bin/ld.gold: error: cannot find -lswiftCxx
/usr/bin/ld.gold: error: cannot find -lswiftCxxStdlib
/usr/bin/ld.gold: error: cannot find -lswiftCxx
/usr/bin/ld.gold: error: cannot find -lswiftCxxStdlib
/work/.build/aarch64-unknown-linux-gnu/release/Demo.build/Demo.swift.o:Demo.swift.o:function $s4Demo10WrapperCatCACyKcfc:(.text.$s4Demo10WrapperCatCACyKcfc+0x38): error: undefined reference to '$sSo3stdO7__cxx11O0071basic_stringCCharchar_traitsCCharallocatorCChar_mHGHsqaGJcraCCfsaqChraaV9CxxStdlibE13stringLiteralAFSS_tcfC'
/work/.build/aarch64-unknown-linux-gnu/release/Demo.build/Demo.swift.o:Demo.swift.o:function $s4Demo10WrapperCatCACyKcfc:(.text.$s4Demo10WrapperCatCACyKcfc+0x100): error: undefined reference to '$sSS9CxxStdlibEySSSo3stdO7__cxx11O0071basic_stringCCharchar_traitsCCharallocatorCChar_mHGHsqaGJcraCCfsaqChraaVcfC'
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```
