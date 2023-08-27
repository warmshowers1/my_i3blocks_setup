#!/usr/bin/env sh

WIDTH=${WIDTH:-200}
HEIGHT=${HEIGHT:-200}
DATEFMT=${DATEFMT:-"+%a %Y-%m-%d %H:%M:%S"}
SHORTFMT=${SHORTFMT:-"+%H:%M:%S"}

case "$BLOCK_BUTTON" in
  1|2|3) 

	# the position of the upper left corner of the popup
	posX=$(($BLOCK_X - $WIDTH / 2))
	posY=$(($BLOCK_Y - $HEIGHT))
	posX=${POS_X:-$posX}
	posY=${POS_Y:-$posY}

	i3-msg -q "exec yad --calendar \
        --width=$WIDTH --height=$HEIGHT \
	    --undecorated --fixed \
	    --close-on-unfocus --no-buttons \
	    --posx=$posX --posy=$posY \
	    > /dev/null"
esac
echo "$LABEL$(date "$DATEFMT")"
# echo "$LABEL$(date "$SHORTFMT")"
