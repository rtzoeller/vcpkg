#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::perfetto::perfetto" for configuration "Debug"
set_property(TARGET unofficial::perfetto::perfetto APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(unofficial::perfetto::perfetto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/debug/lib/libperfetto.a"
  )

list(APPEND _cmake_import_check_targets unofficial::perfetto::perfetto )
list(APPEND _cmake_import_check_files_for_unofficial::perfetto::perfetto "${_IMPORT_PREFIX}/debug/lib/libperfetto.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
