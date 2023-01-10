if test -z "$1"
then
        echo "No Params"
        echo ""
        echo "Pass {filename}"
        echo ""
else
	ffmpeg -i "$1" -i Overlay-Sm.png \
	-filter_complex "[0:v][1:v] overlay=0:H-h" \
	-c:a copy \
	"$1-overlaid.mp4"
	#-pix_fmt yuv420p \
fi

