#!/bin/bash
# simple-interest.sh
# Calculates simple interest: (P * R * T) / 100

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  echo "Example: $0 1000 5 2"
  exit 1
fi

principal=$1
rate=$2
time=$3

# Calculate simple interest
interest=$(echo "$principal * $rate * $time / 100" | bc -l)

printf "Simple Interest = %.2f\n" "$interest"
