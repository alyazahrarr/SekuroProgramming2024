# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tugas4: 1 messages, 1 services")

set(MSG_I_FLAGS "-Itugas4:/home/alyazahrarr/sekuro2024/src/tugas4/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tugas4_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg" NAME_WE)
add_custom_target(_tugas4_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tugas4" "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg" ""
)

get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv" NAME_WE)
add_custom_target(_tugas4_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tugas4" "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tugas4
)

### Generating Services
_generate_srv_cpp(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tugas4
)

### Generating Module File
_generate_module_cpp(tugas4
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tugas4
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tugas4_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tugas4_generate_messages tugas4_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg" NAME_WE)
add_dependencies(tugas4_generate_messages_cpp _tugas4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv" NAME_WE)
add_dependencies(tugas4_generate_messages_cpp _tugas4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tugas4_gencpp)
add_dependencies(tugas4_gencpp tugas4_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tugas4_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tugas4
)

### Generating Services
_generate_srv_eus(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tugas4
)

### Generating Module File
_generate_module_eus(tugas4
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tugas4
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tugas4_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tugas4_generate_messages tugas4_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg" NAME_WE)
add_dependencies(tugas4_generate_messages_eus _tugas4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv" NAME_WE)
add_dependencies(tugas4_generate_messages_eus _tugas4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tugas4_geneus)
add_dependencies(tugas4_geneus tugas4_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tugas4_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tugas4
)

### Generating Services
_generate_srv_lisp(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tugas4
)

### Generating Module File
_generate_module_lisp(tugas4
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tugas4
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tugas4_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tugas4_generate_messages tugas4_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg" NAME_WE)
add_dependencies(tugas4_generate_messages_lisp _tugas4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv" NAME_WE)
add_dependencies(tugas4_generate_messages_lisp _tugas4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tugas4_genlisp)
add_dependencies(tugas4_genlisp tugas4_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tugas4_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tugas4
)

### Generating Services
_generate_srv_nodejs(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tugas4
)

### Generating Module File
_generate_module_nodejs(tugas4
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tugas4
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tugas4_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tugas4_generate_messages tugas4_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg" NAME_WE)
add_dependencies(tugas4_generate_messages_nodejs _tugas4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv" NAME_WE)
add_dependencies(tugas4_generate_messages_nodejs _tugas4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tugas4_gennodejs)
add_dependencies(tugas4_gennodejs tugas4_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tugas4_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tugas4
)

### Generating Services
_generate_srv_py(tugas4
  "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tugas4
)

### Generating Module File
_generate_module_py(tugas4
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tugas4
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tugas4_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tugas4_generate_messages tugas4_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/msg/Pesan.msg" NAME_WE)
add_dependencies(tugas4_generate_messages_py _tugas4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alyazahrarr/sekuro2024/src/tugas4/srv/Phytagoras.srv" NAME_WE)
add_dependencies(tugas4_generate_messages_py _tugas4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tugas4_genpy)
add_dependencies(tugas4_genpy tugas4_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tugas4_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tugas4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tugas4
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tugas4_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tugas4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tugas4
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tugas4_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tugas4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tugas4
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tugas4_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tugas4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tugas4
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tugas4_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tugas4)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tugas4\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tugas4
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tugas4_generate_messages_py std_msgs_generate_messages_py)
endif()
