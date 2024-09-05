#! /bin/sh

TS_DIR=tree-sitter-pr-3570

cd "${TS_DIR}" && \
  make clean && \
  gcc \
    -Ilib/include -Ilib/src lib/src/lib.c \
    -I../tree-sitter-clojure/src ../tree-sitter-clojure/src/parser.c \
    -o ../main-with-pr-3570 \
    ../main.c

