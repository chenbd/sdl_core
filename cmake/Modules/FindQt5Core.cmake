execute_process(
  COMMAND ${CMAKE_SOURCE_DIR}/FindQt.sh -v ${qt_version} Qt5CoreConfig.cmake
  OUTPUT_VARIABLE config_file
)

if(config_file STREQUAL "")
# chenbd
#message(FATAL_ERROR "Qt5 Core module not found")
    set(config_file "${QT_ROOT}/lib/cmake/Qt5Core/Qt5CoreConfig.cmake")
    message(STATUS "Qt5 Core module is at ${config_file}")
endif(config_file STREQUAL "")

include(${config_file})
