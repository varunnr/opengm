FIND_PATH(LIBDAI_INCLUDE_DIR
  dai/alldai.h
  HINTS "~/usr/local/include/dai" 
   "~/usr/include/dai"
)



FIND_LIBRARY(LIBDAI_LIBRARY
   libdai
   HINTS "~/usr/local/lib/dai" 
   "~/usr/lib/dai"
)


INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBDAI 
   DEFAULT_MSG 
   LIBDAI_LIBRARY 
   LIBDAI_INCLUDE_DIR 
)
	
IF(LIBDAI_FOUND)

ELSE()
   SET(LIBDAI_INCLUDE_DIR LIBDAI_INCLUDE_DIR-NOTFOUND)
   SET(LIBDAI_LIBRARY   LIBDAI_LIBRARY-NOTFOUND)
ENDIF(LIBDAI_FOUND)
