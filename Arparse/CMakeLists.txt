#include_directories(${CMAKE_CURRENT_BINARY_DIR}/includes)
include_directories(${PROJECT_SOURCE_DIR}/Arparse/includes)

file(GLOB LIB_ARPARSE_SRC "./sources/*.c" )



add_library(arparse STATIC  ${LIB_ARPARSE_SRC})

