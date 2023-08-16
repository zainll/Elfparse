#include_directories(${CMAKE_CURRENT_BINARY_DIR}/includes)

file(GLOB OBJDP_SRC "./sources/*.c" )
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/includes)

set(libelfparse ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/libelfparse.a)
set(libarparse ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/libarparse.a)
#link_libraries(${PROJECT_SOURCE_DIR}/libelfparse)
#link_libraries(${PROJECT_SOURCE_DIR}/libarparse)


add_executable(objdump  ${OBJDP_SRC})

target_link_libraries(
    objdump
    ${libelfparse}   
    ${libarparse}   
)


