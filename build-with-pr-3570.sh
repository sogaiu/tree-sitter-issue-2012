#! /bin/sh

TS_DIR=tree-sitter-pr-3570

cd "${TS_DIR}" && \
  make clean && \
  cd .. || exit && \
  gcc \
    -Itree-sitter/lib/include -Itree-sitter/lib/src tree-sitter/lib/src/lib.c \
    -Itree-sitter-clojure/src tree-sitter-clojure/src/parser.c \
    -o main-with-pr-3570 \
    main.c

