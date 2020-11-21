#!/bin/sh
set -eu #x
trap "" HUP # ignore hangup signal
exec st # simple terminal
