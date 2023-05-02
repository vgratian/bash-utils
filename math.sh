#!/usr/bin/env false

# Calculate percentage of m over n.
percent() {
    if [ "$2" -eq 0 ]; then
        echo "0"
    else
        awk -vn="$1" -vm="$2" 'BEGIN{printf("%.2f", m/n*100)}'
    fi
}