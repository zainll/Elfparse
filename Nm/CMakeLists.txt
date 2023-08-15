#include_directories(${CMAKE_CURRENT_BINARY_DIR}/includes)
include_directories(${PROJECT_SOURCE_DIR}/Nm/includes)

file(GLOB NM_SRC "./sources/*.c" )

set(libelfparse ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/libelfparse.a)
set(libarparse ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/libarparse.a)
#link_libraries(${PROJECT_SOURCE_DIR}/libelfparse)
#link_libraries(${PROJECT_SOURCE_DIR}/libarparse)


add_executable(my_nm  ${NM_SRC})

target_link_libraries(
    my_nm
    ${libelfparse}   
    ${libarparse}   
)


