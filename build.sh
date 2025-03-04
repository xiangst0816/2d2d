#!/bin/bash

set -e

if ! command -v zine &> /dev/null
then
    echo "zine could not be found, start installing..."

    RUSTUP_TOOLCHAIN=stable cargo install zine
fi

zine build
