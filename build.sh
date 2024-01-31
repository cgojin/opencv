#!/bin/sh

#git clone -b 4.1.0-android https://github.com/cgojin/opencv
#cd opencv

#rm -rf build

export JAVA_HOME="/opt/homebrew/opt/openjdk@11"
export YOUR_OPENCV_SRC_FOLDER=.
export YOUR_CONTRIB_SRC_FOLDER=
export YOUR_OPENCV_BUILD_FOLDER=build
export ANDROID_SDK="${HOME}/Library/Android/sdk"
export ANDROID_NDK_HOME=$ANDROID_SDK/ndk/18.1.5063045

python3 $YOUR_OPENCV_SRC_FOLDER/platforms/android/build_sdk.py \
    $YOUR_OPENCV_BUILD_FOLDER \
    $YOUR_OPENCV_SRC_FOLDER \
    --ndk_path $ANDROID_NDK_HOME \
    --sdk_path $ANDROID_SDK \
    --config $YOUR_OPENCV_SRC_FOLDER/platforms/android/ndk-18-api-level-21.config.py
    #--debug

#rf -rf build/o4a
