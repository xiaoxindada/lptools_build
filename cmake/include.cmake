set(core_headers "${CMAKE_SOURCE_DIR}/src/core/include" CACHE STRING "" FORCE)
set(fmtlib_headers "${CMAKE_SOURCE_DIR}/src/fmtlib/include" CACHE STRING "" FORCE)
set(zlib_headers "${CMAKE_SOURCE_DIR}/src/zlib" CACHE STRING "" FORCE)
set(libbase_headers "${CMAKE_SOURCE_DIR}/src/libbase/include" CACHE STRING "" FORCE)
set(libcutils_headers "${CMAKE_SOURCE_DIR}/src/core/libcutils/include" CACHE STRING "" FORCE)
set(libutils_headers "${CMAKE_SOURCE_DIR}/src/core/libutils/include" CACHE STRING "" FORCE)
set(liblog_headers
    "${CMAKE_SOURCE_DIR}/src/logging/liblog/include"
    "${CMAKE_SOURCE_DIR}/src/logging/liblog/include_vndk"
    CACHE STRING "" FORCE
)
set(libpcre2_headers "${CMAKE_SOURCE_DIR}/src/pcre/include" CACHE STRING "" FORCE)
set(libjsoncpp_headers "${CMAKE_SOURCE_DIR}/src/jsoncpp/include" CACHE STRING "" FORCE)
set(libprocessgroup_headers
    "${CMAKE_SOURCE_DIR}/src/core/libprocessgroup"
    "${CMAKE_SOURCE_DIR}/src/core/libprocessgroup/include"
    "${CMAKE_SOURCE_DIR}/src/core/libprocessgroup/cgrouprc/include"
    CACHE STRING "" FORCE)
set(libprocessgroup_util_headers "${CMAKE_SOURCE_DIR}/src/core/libprocessgroup/util/include" CACHE STRING "" FORCE)
set(boringssl_headers "${CMAKE_SOURCE_DIR}/src/boringssl/include" CACHE STRING "" FORCE)
set(e2fsprogs_lib_headers "${CMAKE_SOURCE_DIR}/src/e2fsprogs/lib" CACHE STRING "" FORCE)
set(libsparse_headers "${CMAKE_SOURCE_DIR}/src/core/libsparse/include" CACHE STRING "" FORCE)
set(libext4_utils_headers 
    "${CMAKE_SOURCE_DIR}/src/extars/ext4_utils"
    "${CMAKE_SOURCE_DIR}/src/extras/ext4_utils/include"
    CACHE STRING "" FORCE)
set(libcrypto_utils_headers 
    "${CMAKE_SOURCE_DIR}/src/core/libcrypto_utils" 
    "${CMAKE_SOURCE_DIR}/src/core/libcrypto_utils/include"
    CACHE STRING "" FORCE)
set(libgtest_prod_headers "${CMAKE_SOURCE_DIR}/src/googletest/googletest/include" CACHE STRING "" FORCE)
set(libgmock_headers "${CMAKE_SOURCE_DIR}/src/googletest/googlemock/include" CACHE STRING "" FORCE)
set(protobuf_headers 
    "${CMAKE_SOURCE_DIR}/src/protobuf/src"
    "${CMAKE_SOURCE_DIR}/src/protobuf/third_party"
    "${CMAKE_SOURCE_DIR}/src/protobuf/third_party/utf8_range"
    "${CMAKE_SOURCE_DIR}/src/abseil-cpp"
    CACHE STRING "" FORCE)
set(absl_headers
    "${CMAKE_SOURCE_DIR}/src/abseil-cpp"
    CACHE STRING "" FORCE)
set(liblp_headers ""  CACHE STRING
    "${CMAKE_SOURCE_DIR}/src/core/fs_mgr"
    "${CMAKE_SOURCE_DIR}/src/core/fs_mgr/liblp/include"
    CACHE STRING "" FORCE)
set(libjsonpbparse_headers "${CMAKE_SOURCE_DIR}/src/extras/libjsonpb/parse/include" CACHE STRING "" FORCE)
set(libbinder_headers "${CMAKE_SOURCE_DIR}/src/core/libutils/binder/include" CACHE STRING "" FORCE)
set(libaidl_transactions_headers "${CMAKE_SOURCE_DIR}/src/aidl/include" CACHE STRING "" FORCE)