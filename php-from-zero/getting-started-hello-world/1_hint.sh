#!/bin/bash

seconds_sofar=$1

hint_1 () {
  echo -e "Hint: Start creating a file named \`index.php\`:\r\n"
  echo -e "\`touch index.php\`\r\n"
}

hint_2 () {
  hint_1
  echo -e "Hint: Start by adding the open tag:\r\n"
  echo -e "\`\\<?php\`\r\n"
}

hint_3 () {
  hint_1
  hint_2
  echo -e "Hint: Declare strict type checks:\n"
  echo -e "\`declare(strict_types=1);\`\r\n"
}

echo "### Hints: $seconds_sofar"

if [[ $seconds_sofar -ge 30 && $seconds_sofar -lt 60 ]]; then
  hint_1
fi

if [[ $seconds_sofar -ge 60 && $seconds_sofar -lt 90 ]]; then
  hint_2
fi

if [[ $seconds_sofar -ge 90 ]]; then
  hint_3
fi
