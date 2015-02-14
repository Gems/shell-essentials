#!/bin/bash
set -e

lcm=$(history | tail -2 | head -1 | sed -E 's/^[^0-9]+[0-9]+[ ]+//')

if [ -n "$(echo $lcm | grep -o 'git push')" ]; then
  fix=$($lcm 2>&1 | grep 'git push --set-origin' | sed -E 's/^[ ]+//')
fi

echo "Fix with: $fix"
$fix

