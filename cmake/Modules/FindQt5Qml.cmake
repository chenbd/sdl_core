execute_process(
  COMMAND ${CMAKE_SOURCE_DIR}/FindQt.sh -v ${qt_version} Qt5QmlConfig.cmake
  OUTPUT_VARIABLE config_file
)

if(config_file STREQUAL "")
#chenbd
#message(FATAL_ERROR "Qt5 Qml module not found")
    set(config_file "${QT_ROOT}/lib/cmake/Qt5Xml/Qt5XmlConfig.cmake")
    message(STATUS "Qt5 Qml module is at ${config_file}")
endif(config_file STREQUAL "")

include(${config_file})
