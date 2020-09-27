## Steps

- setup your compiling environment in a docker. run [build.sh](./docker/build.sh) to download necessary files and to build a docker image
- run the docker image with [run.sh](./docker/run.sh)
- in the building container, cd /data where you will find bwa source code and compile bwa.wasm like `make bwa.wasm`


## Notes
we only use *wasi-sdk* to provide *sysroot* and *libclang_rt.builtins-wasm32.a*. Actually, you can download [wasi-sysroot-11.tar.gz](https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-11/wasi-sysroot-11.0.tar.gz) and [libclang_rt.builtins-wasm32.a](https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-11/libclang_rt.builtins-wasm32-wasi-11.0.tar.gz) separatelly.

Instead of *wasi-sdk*, we are using *clang-11* as our compiler, using *wasm-ld-11* as our linker.
