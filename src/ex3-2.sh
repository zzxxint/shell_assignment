#!/bin/bash
for x in "$@"
do
    y=$(echo "0.5 * $x * $x" | bc -l)
    echo "x=$x -> y=$y"
done
