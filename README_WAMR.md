## Steps

- install EMCC. Please refer to [download ans install](https://emscripten.org/docs/getting_started/downloads.html)
- clone [bwa](https://github.com/lh3/bwa) and compile bwa.wasm like `make bwa.wasm`


## Notes

After trying *wasi-sdk*, *clang-11* and *emcc*, we found *emcc* is a better **C/C++ to WebAssembly compiler** because of its libraries supporting.

