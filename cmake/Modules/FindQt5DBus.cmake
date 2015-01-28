execute_process(
  COMMAND ${CMAKE_SOURCE_DIR}/FindQt.sh -v ${qt_version} Qt5DBusConfig.cmake
  OUTPUT_VARIABLE config_file
)

if(config_file STREQUAL "")
#chenbd
#  message(FATAL_ERROR "Qt5 DBus module not found")
    set(config_file "${QT_ROOT}/lib/cmake/Qt5DBus/Qt5DBusConfig.cmake")
    message(STATUS "Qt5 DBus module is at ${config_file}")
endif(config_file STREQUAL "")

include(${config_file})
