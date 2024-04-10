#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::perfetto::perfetto" for configuration "Release"
set_property(TARGET unofficial::perfetto::perfetto APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(unofficial::perfetto::perfetto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libperfetto.a"
  )

list(APPEND _cmake_import_check_targets unofficial::perfetto::perfetto )
list(APPEND _cmake_import_check_files_for_unofficial::perfetto::perfetto "${_IMPORT_PREFIX}/lib/libperfetto.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
