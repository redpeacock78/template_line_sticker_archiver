#!/usr/bin/env bash

find stickers -type d -empty -print0 |
    xargs -0 rm -vrf {} &&
    rar a -rr5% -r -v100m "release-${*}.rar" "stickers"
