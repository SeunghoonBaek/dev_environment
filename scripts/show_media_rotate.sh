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
	ratio=`ffprobe -v quiet -show_format -show_streams -print_format json $i | grep -E 'rotate'`
	count=`echo ${ratio} | grep 'rotate' | wc -l`

	if [ ${count} -ne 0 ]
	then
		echo "${i} ${ratio}"
	fi
done
