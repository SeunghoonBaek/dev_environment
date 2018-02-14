#/bin/bash

if [ $# -eq 0 ]
then
	echo "Please enter base path, ex) ./video_dir/"
	exit 0
fi 

BASE_DIR=$1

FILELIST=`find ${BASE_DIR} -iname "*"`

for i in ${FILELIST}
do
	MSG=`ffprobe -v quiet -show_format -show_streams -print_format json $i | grep -E 'width|height'`
	echo ${MSG}
done
