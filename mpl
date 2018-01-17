#!/bin/bash
F=$1
if [ $# -eq 2 ]
then
	S=$2
else
	filename="${F%.*}"
	S=${filename}.srt
fi

mplayer $F -sub $S
