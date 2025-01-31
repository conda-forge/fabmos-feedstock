REM From https://github.com/conda-forge/netcdf-fortran-feedstock/blob/main/recipe/bld.bat
set "HOST=x86_64-w64-mingw32"
set "CC=%HOST%-gcc.exe"
set "FC=%HOST%-gfortran.exe"

(
echo [build_ext]
echo cmake_opts=-G "Ninja" %CMAKE_ARGS%
echo compiler=%FC%
) > "%SRC_DIR%\python\setup.cfg"

set CMAKE_BUILD_PARALLEL_LEVEL=%CPU_COUNT%

"%PYTHON%" -m pip install . -vv
