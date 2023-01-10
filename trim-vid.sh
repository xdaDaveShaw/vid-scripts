if test -z "$1"
then
	echo "No Params"
	echo ""
	echo "Pass {filename} {start} {duration}"
	echo "where start / duration are hh:mm:ss format"
	echo ""
else
	ffmpeg -i "$1" -ss "$2" -t "$3" -c:v copy -c:a copy trimmed.mp4
fi
