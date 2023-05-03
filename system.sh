#!/usr/bin/env false

abort() {
	echo "${FUNCNAME[1]}: ${1:-aborted}" >&2
	exit 1
}