
set cmake_bin=C:\Users\KuovaneWu\AppData\Local\Android\Sdk\cmake\3.10.2.4988404\bin\cmake.exe
set ninja_bin=C:\Users\KuovaneWu\AppData\Local\Android\Sdk\cmake\3.10.2.4988404\bin\ninja.exe

mkdir build_v7a
%cmake_bin% -H.\ -B.\build_v7a -DANDROID_ABI=armeabi-v7a -DANDROID_NDK=%ANDROID_NDK% -DANDROID_PLATFORM=android-29 -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=%ninja_bin% -DCMAKE_TOOLCHAIN_FILE=C:/Users/KuovaneWu/AppData/Local/Android/Sdk/ndk/21.3.6528147/build/cmake/android.toolchain.cmake "-DCMAKE_CXX_FLAGS=-std=c++11 -fexceptions" -G Ninja
%ninja_bin% -C .\build_v7a
mkdir Plugins\Android\Libs\armeabi-v7a
move build_v7a\lib_out\UnityCppDemo.so Plugins\Android\Libs\armeabi-v7a\UnityCppDemo.so

mkdir build_v8a
%cmake_bin% -H.\ -B.\build_v8a -DANDROID_ABI=arm64-v8a -DANDROID_NDK=%ANDROID_NDK% -DANDROID_PLATFORM=android-29 -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=%ninja_bin% -DCMAKE_TOOLCHAIN_FILE=C:/Users/KuovaneWu/AppData/Local/Android/Sdk/ndk/21.3.6528147/build/cmake/android.toolchain.cmake "-DCMAKE_CXX_FLAGS=-std=c++11 -fexceptions" -G Ninja
%ninja_bin% -C .\build_v8a
mkdir Plugins\Android\Libs\arm64-v8a
move build_v8a\lib_out\UnityCppDemo.so Plugins\Android\Libs\arm64-v8a\UnityCppDemo.so

echo "compile success"
pause