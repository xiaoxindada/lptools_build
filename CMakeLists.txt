cmake_minimum_required(VERSION 3.15)

project(lptools_build LANGUAGES C CXX)

set(CMAKE_C_STANDARD 23)
set(CMAKE_CXX_STANDARD 23)

if(CMAKE_SYSTEM_NAME STREQUAL "Android")
    message("This is Android cross compile")
endif()

if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    message("This is use clang build")
    add_link_options("-fuse-ld=lld")
    if(NOT CMAKE_SYSTEM_NAME STREQUAL "Android")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
        link_libraries(c++ c++abi)
    endif()
endif()

add_link_options("-static")
if(CMAKE_BUILD_TYPE STREQUAL "Release")
    if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        add_compile_options("-Os" "-flto")
        add_link_options("-flto" "-Wl,--gc-sections" "-s")
    endif()
endif()

# check x86_64 aprotoc
function(check_x86_64_aprotoc find_dir)
find_program(have_prebuilt_aprotoc "aprotoc" "${find_dir}")
if(NOT DEFINED MY_TARGET)
    set(MY_TARGET " ")
endif()
if(NOT have_prebuilt_aprotoc)
    if(NOT ${MY_TARGET} MATCHES "aprotoc")
        message(FATAL_ERROR 
        "Not found prebuilt/x86_64/aprotoc, please to build x86_64 aprotoc\n \
        use command: cmake xxx -DMY_TARGET=\"aprotoc\" to build \n \
        compiled copy to ${find_dir}
        ")
    endif()
endif()
message("MY_TARGET: ${MY_TARGET}")    
endfunction()

set(prebuilt_protoc "${CMAKE_SOURCE_DIR}/prebuilt/x86_64/aprotoc")
set(prebuilt_aidl_cpp "${CMAKE_SOURCE_DIR}/prebuilt/x86_64/aidl-cpp")
check_x86_64_aprotoc("${CMAKE_SOURCE_DIR}/prebuilt/x86_64")

# fix absl dll test link dir not defined 
link_directories(${CMAKE_CURRENT_BINARY_DIR})

# include headers
include("cmake/include.cmake")

# libs
include("cmake/fmtlib.cmake")
include("cmake/zlib.cmake")
include("cmake/liblog.cmake")
include("cmake/libbase.cmake")
include("cmake/libcutils.cmake")
include("cmake/libprocessgroup.cmake")
include("cmake/libjsoncpp.cmake")
include("cmake/boringssl.cmake")
include("cmake/libcrypto_utils.cmake")
include("cmake/libext2_uuid.cmake")
include("cmake/libext4_utils.cmake")
include("cmake/libsparse.cmake")
include("cmake/libjsonpbparse.cmake")
include("cmake/liblp.cmake")
include("cmake/googletest.cmake")

# protobuf
include("cmake/absl.cmake")
include("cmake/protobuf.cmake")
include("cmake/aprotoc.cmake")

# partition_tools
include("cmake/partition_tools.cmake")

if(CMAKE_SYSTEM_NAME STREQUAL "Android")
    install(TARGETS lpmake lpunpack lpadd lpflash)
else()
    install(TARGETS lpmake lpunpack lpdump lpadd lpflash)
endif()