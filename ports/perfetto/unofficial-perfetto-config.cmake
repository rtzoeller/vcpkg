get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

add_library(unofficial::perfetto::perfetto STATIC IMPORTED)

set_target_properties(unofficial::perfetto::perfetto PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:Threads::Threads>"
)

set_property(TARGET unofficial::perfetto::perfetto
  APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
    "${_IMPORT_PREFIX}/include"
)

set_property(TARGET unofficial::perfetto::perfetto APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(unofficial::perfetto::perfetto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libperfetto.a"
  )

set_property(TARGET unofficial::perfetto::perfetto APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(unofficial::perfetto::perfetto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/debug/lib/libperfetto.a"
  )

set(_IMPORT_PREFIX)
