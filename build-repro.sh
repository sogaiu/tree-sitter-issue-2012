#! /bin/sh

TS_DIR=tree-sitter

cd "${TS_DIR}" && \
  make clean && \
  gcc \
    -Ilib/include -Ilib/src lib/src/lib.c \
    -I../tree-sitter-clojure/src ../tree-sitter-clojure/src/parser.c \
    -o ../main-repro \
    ../main.c

