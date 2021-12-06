# CMakeList.txt: UnityCppDemo 的 CMake 项目，在此处包括源代码并定义
# 项目特定的逻辑。
#
cmake_minimum_required (VERSION 3.8)


# 设置变量
SET(UnityCppDemoSrc ./UnityCppDemo.h ./UnityCppDemo.cpp)
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ../lib_out)

# 第一个参数为你需要构建的dll的名字，第二个为类型
ADD_LIBRARY(UnityCppDemo SHARED ${UnityCppDemoSrc})
#INSTALL(TARGETS UnityCppDemo)


# 为dll设置linker
# 指定dll的生成目录，这里是：./lib_out
SET_TARGET_PROPERTIES(UnityCppDemo PROPERTIES LINKER_LANGUAGE CXX
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
        LIBRARY_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
        OUTPUT_NAME "UnityCppDemo"
        PREFIX "")

