if("master" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/mobile1/Basics_motion/src/serialcom-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/mobile1/Basics_motion/src/serialcom-src'")
endif()

execute_process(
  COMMAND "/usr/bin/git" clone "https://github.com/Gastd/serialcom" "serialcom-src"
  WORKING_DIRECTORY "/home/mobile1/Basics_motion/src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/Gastd/serialcom'")
endif()

execute_process(
  COMMAND "/usr/bin/git" checkout master
  WORKING_DIRECTORY "/home/mobile1/Basics_motion/src/serialcom-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'master'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule init
  WORKING_DIRECTORY "/home/mobile1/Basics_motion/src/serialcom-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/home/mobile1/Basics_motion/src/serialcom-src'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule update --recursive
  WORKING_DIRECTORY "/home/mobile1/Basics_motion/src/serialcom-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/mobile1/Basics_motion/src/serialcom-src'")
endif()

