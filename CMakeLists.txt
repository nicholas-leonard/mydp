CMAKE_MINIMUM_REQUIRED(VERSION 2.6 FATAL_ERROR)
CMAKE_POLICY(VERSION 2.6)
IF(LUAROCKS_PREFIX)
    MESSAGE(STATUS "Installing Torch through Luarocks")
    STRING(REGEX REPLACE "(.*)lib/luarocks/rocks.*" "\\1" CMAKE_INSTALL_PREFIX  "${LUAROCKS_PREFIX}")
    MESSAGE(STATUS "Prefix inferred from Luarocks: ${CMAKE_INSTALL_PREFIX}")
ENDIF()
FIND_PACKAGE(Torch REQUIRED)
FIND_PACKAGE(OpenMP)

IF (OPENMP_FOUND)
  MESSAGE (STATUS "OpenMP Found with compiler flag : ${OpenMP_C_FLAGS}")
  SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
ENDIF (OPENMP_FOUND)

#SET(src init.c) #uncomment this when C code is added
FILE(GLOB luasrc *.lua)
SET(luasrc ${luasrc} test/test.lua) 
ADD_TORCH_PACKAGE(mydp "${src}" "${luasrc}")
#TARGET_LINK_LIBRARIES(nne luaT TH) #uncomment this when C code is added

