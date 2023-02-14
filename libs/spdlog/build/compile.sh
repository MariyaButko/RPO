ABI=x86

ANDROID_NDK=/home/mariya/Android/Sdk/ndk/23.1.7779620/build
TOOL_CHAIN=/home/mariya/Android/Sdk/ndk/23.1.7779620/build/cmake/android.toolchain.cmake
CMAKE=/home/mariya/Android/Sdk/cmake/3.22.1/bin/cmake

mkdir -p ${ABI}
cd ${ABI}
${CMAKE} ../../spdlog -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 -DANDROID_ABI=${ABI} -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN} -DCMAKE_CXX_FLAGS=-DSPLOG_COMPILED_LIB

${CMAKE} --build .

