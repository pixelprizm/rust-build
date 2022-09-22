#!/usr/bin/env bash

cd c:
git clone --recursive --depth 1 --shallow-submodules https://github.com/esp-rs/rust.git r
cd r

python3 src/bootstrap/configure.py --experimental-targets=Xtensa --enable-extended --tools=clippy,cargo,rustfmt --dist-compression-formats='xz' --host 'x86_64-pc-windows-gnu'

python3 x.py dist --stage 2