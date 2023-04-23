project(diamond_lib)

set(HEADER_FILES
        DiamondWorker.h)

set(SOURCE_FILES
        DiamondWorker.cpp)

add_library(diamond_lib STATIC ${SOURCE_FILES} ${HEADER_FILES})