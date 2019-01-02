#!/bin/bash

printf "Countdown, how much seconds :> "
read seconds
since=$(date +%s)
watch -tn 1  eval "left=\$(($seconds-\$(date +%s)+$since));
[ \$left -gt 0 ] && { echo \"left \$left sec...\" ; } || { \
    echo done;        \
    echo Hit Cntl-C;  \
}"
