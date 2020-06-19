#!/bin/bash
if [ $(uname) = "Linux" ]; then
    BINDIFF=./bindiff
else
    BINDIFF=./bindiff_mac
fi

FILES_A=$(find $1 -iname "*$3")
DIFFS=""
for i in $FILES_A; do
    j=${i/$1/$2}
    if [[ -f "$j" ]]; then
        echo "$j"
        if ! $BINDIFF "$i" "$j" -v; then
            DIFFS=$DIFFS$'\n'${i#$1}
        fi
    else
        echo "$j does not exist!"
    fi
done
echo "$DIFFS" > diffs-$1-$2
