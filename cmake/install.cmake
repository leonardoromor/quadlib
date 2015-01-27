
#----------------------------------------------------------------------------
# INSTALLATION

file(GLOB mathgl_lib ${PROJECT_SOURCE_DIR}/lib/*)

install (TARGETS ${PROJECT_SOURCE_DIR}/libquadrature.release DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install (TARGETS ${PROJECT_SOURCE_DIR}/libquadrature.debug DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install (DIRECTORY ${PROJECT_SOURCE_DIR}/include/ DESTINATION ${CMAKE_INSTALL_PREFIX}/include)

#----------------------------------------------------------------------------
# CPACK

set(CPACK_GENERATOR "DEB")
set(CPACK_PACKAGE_VERSION ${version})
set(CPACK_PACKAGE_FILE_NAME "quadlib" )
set(CPACK_PACKAGE_DESCRIPTION_FILE "${PROJECT_SOURCE_DIR}/readme.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "lib for quadrature")
set(CPACK_PACKAGE_INSTALL_DIRECTORY /usr/lib)
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE amd64)
set(CPACK_DEBIAN_PACKAGE_NAME "libquadrature")
set(CPACK_DEBIAN_PACKAGE_SECTION "science")
include (CPack)
