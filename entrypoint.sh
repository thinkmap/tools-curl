#!/bin/sh
set -e

# Prepend "bash" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- bash "$@"
fi

exec "$@"
