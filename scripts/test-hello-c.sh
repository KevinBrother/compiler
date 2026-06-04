#!/usr/bin/env sh
set -eu

cc -Wall -Wextra -Werror -std=c11 -o /tmp/compiler-hello src/hello.c

actual=$(/tmp/compiler-hello)
expected="hello, compiler"

if [ "$actual" != "$expected" ]; then
  printf 'expected: %s\nactual: %s\n' "$expected" "$actual" >&2
  exit 1
fi

printf '%s\n' "$actual"
