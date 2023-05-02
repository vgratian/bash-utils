#!/usr/bin/env false

# Draw a spinning bar forever. Normally, you would run spin in the background,
# store its pid, and kill it once a task is complete. Example:
#   spin &
#   spin_pid = $!
#   sleep 1
#   kill $spin_pid
spin() {
	while true;	do
		for _ in \| / - \\ ; do
            printf '%s' "$_"
            sleep 0.1s
            printf '%b%b' "\033[D" "\033[K"
		done
	done
}
