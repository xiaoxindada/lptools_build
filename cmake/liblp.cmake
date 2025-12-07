set(target_name "lp")

set(fs_mgr_dir "${CMAKE_SOURCE_DIR}/src/core/fs_mgr")
set(liblp_srcs_dir "${fs_mgr_dir}/liblp")


set(liblp_srcs
        "${liblp_srcs_dir}/builder.cpp"
        "${liblp_srcs_dir}/super_layout_builder.cpp"
        "${liblp_srcs_dir}/images.cpp"
        "${liblp_srcs_dir}/partition_opener.cpp"
        "${liblp_srcs_dir}/property_fetcher.cpp"
        "${liblp_srcs_dir}/reader.cpp"
        "${liblp_srcs_dir}/utility.cpp"
        "${liblp_srcs_dir}/writer.cpp"
)

set(cflags 
    "-Wall"
)

add_library(${target_name} STATIC ${liblp_srcs})
target_compile_options(${target_name} PRIVATE ${cflags})
target_include_directories(${target_name} PUBLIC 
    ${liblp_headers}
    ${libbase_headers}
    ${libcutils_headers}
    ${boringssl_headers}
    ${liblog_headers}
    ${libsparse_headers}
    ${e2fsprogs_lib_headers}
    ${zlib_headers}
)
target_link_libraries(${target_name} PUBLIC 
    crypto
    cutils
    base
    log
    crypto_utils
    sparse
    ext4_utils
    zlib
)