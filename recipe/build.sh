cat > "${SRC_DIR}/setup.cfg" << EOL
[build_ext]
cmake_opts=-G "Ninja" ${CMAKE_ARGS}
EOL

export CMAKE_BUILD_PARALLEL_LEVEL=${CPU_COUNT}

"${PYTHON}" -m pip install . -vv
