#!/bin/bash

TEMP_DIR_PATH=${HOME}/temp

DATE_NOW=`date +%y%m%d_%H`
SAVE_DIR_PATH=${HOME}/test/videos/${DATE_NOW}
mkdir -p ${SAVE_DIR_PATH}

echo "====================================="
echo " Save dir path : ${SAVE_DIR_PATH}"
echo "====================================="

video_results=`find ${TEMP_DIR_PATH} -iname "*.mp4"`
image_results=`find ${TEMP_DIR_PATH} -iname "*.jpg"`

for i in ${video_results}
do
    filename=`echo ${i} | awk -F'/' '{print $(NF-1)".mp4"}'`
    cp -f ${i} ${SAVE_DIR_PATH}/${filename}
done

for i in ${image_results}
do
    filename=`echo ${i} | awk -F'/' '{print $(NF-1)".jpg"}'`
    cp -f ${i} ${SAVE_DIR_PATH}/${filename}
done

echo " >> Done"
