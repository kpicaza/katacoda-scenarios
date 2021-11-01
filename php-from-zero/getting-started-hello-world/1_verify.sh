#!/bin/bash

cat << EOF > index.php
<?php

declare(strict_types=1);
EOF

if cmp -s "/home/dev/server/index.php" "/root/index.php"; then
    printf 'Congrats!!! you beat the first challenge \n'
    exit 0
fi

exit 1
