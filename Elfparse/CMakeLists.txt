#include_directories(${CMAKE_CURRENT_BINARY_DIR}/includes)
include_directories(${PROJECT_SOURCE_DIR}/Elfparse/includes)

file(GLOB LIB_ELFPARSE_SRC "./sources/*.c" )



add_library(elfparse STATIC  ${LIB_ELFPARSE_SRC})

