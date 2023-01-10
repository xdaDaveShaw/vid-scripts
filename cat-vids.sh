#  _._     _,-'""`-._
# (,-.`._,'(       |\`-/|
#    `-.-' \ )-`( , o o)
#          `-    \`_`"'-

ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
