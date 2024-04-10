if (VCPKG_TARGET_IS_WINDOWS)
    vcpkg_check_linkage(ONLY_STATIC_LIBRARY)
endif()

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO google/perfetto
    REF "v${VERSION}"
    SHA512 9ad6f314e6e56558f7062290afef840d81689776bf3a31708a61fef9ea8d80ac00892b5316856adc784b17e71c67a8429500602b301958ccba24fc4a3b6ac6f8
    HEAD_REF main
)

vcpkg_configure_meson(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_meson()

file(INSTALL "${SOURCE_PATH}/sdk/perfetto.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

vcpkg_copy_pdbs()

vcpkg_fixup_pkgconfig()

file(INSTALL "${CURRENT_PORT_DIR}/unofficial-perfetto-config.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/unofficial-${PORT}")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
