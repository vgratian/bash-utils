#!/usr/bin/env false

color_reset="\033[0m"
color_bold="\033[1m"
color_red="\033[31m"
color_pink="\033[35m"
color_yellow="\033[93m"
color_cyan="\033[36m"
color_grey="\033[90m"
color_green="\033[32m"


# Moves cursors to the left n characters (default n=80) and clears the line.
clear_line() {
    local -i n=${1:-50}
    # move cursor to left
	for (( i=0; i<n; i+=1 )); do
	    printf '%b' "\033[D"
	done
	printf '%b' "\033[K"
}