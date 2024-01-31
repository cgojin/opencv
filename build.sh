#!/bin/sh

#git clone -b 4.x-android https://github.com/cgojin/opencv
#cd opencv

#rm -rf build

pushd .
export FFMPEG_KIT=$(cd ../ffmpeg-kit/prebuilt; pwd)
popd

export JAVA_HOME='/opt/homebrew/opt/openjdk@17'
export YOUR_OPENCV_SRC_FOLDER=.
export YOUR_CONTRIB_SRC_FOLDER=
export YOUR_OPENCV_BUILD_FOLDER=build
export ANDROID_SDK="${HOME}/Library/Android/sdk"
export ANDROID_NDK_HOME=$ANDROID_SDK/ndk/25.1.8937393

python3 $YOUR_OPENCV_SRC_FOLDER/platforms/android/build_sdk.py \
    $YOUR_OPENCV_BUILD_FOLDER \
    $YOUR_OPENCV_SRC_FOLDER \
    --ndk_path $ANDROID_NDK_HOME \
    --sdk_path $ANDROID_SDK \
    --config $YOUR_OPENCV_SRC_FOLDER/platforms/android/ndk-25.config.py \
    --no_samples_build
    #--debug

# ffmpeg built-in videoio backends is compiled ?
ls -l build/o4a/modules/videoio/CMakeFiles/opencv_videoio.dir/src/cap_ffmpeg.cpp.o

#rf -rf build/o4a
