execute_process(
  COMMAND ${CMAKE_SOURCE_DIR}/FindQt.sh -v ${qt_version} Qt5QuickConfig.cmake
  OUTPUT_VARIABLE config_file
)

if(config_file STREQUAL "")
    #chenbd
    #message(FATAL_ERROR "Qt5 Quick module not found")
    set(config_file "${QT_ROOT}/lib/cmake/Qt5Quick/Qt5QuickConfig.cmake")
    message(STATUS "Qt5 Quick module is at ${config_file}")
endif(config_file STREQUAL "")

include(${config_file})
