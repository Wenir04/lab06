# lab06
создаем пустой репозиторий и клонируем его к нам в локальную папку
```
mkdir lab06
cd lab06
git clone https://github.com/Wenir04/lab06
git init
```
клонируем репозиторий 3 лабы и копируем оттуда formatter_ex_lib, formatter_lib, hello_world_application, solver_application,solver_lib 
```
git clone https://github.com/Wenir04/laba03
```
возвращаемся к нашей папке с 6ой лабой
```
nano CMakeLists.txt
cmake_minimum_required(VERSION 3.4)
 
project(solver)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(solver solver_application/equation.cpp)

add_library(solver_lib STATIC ${CMAKE_CURRENT_SOURCE_DIR}/solver_lib/solver.cpp)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex_lib ${CMAKE_CURRENT_BINARY_DIR}/formatter_ex_lib)

target_include_directories( solver PUBLIC # позволяем видеть директории
${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex_lib/
${CMAKE_CURRENT_SOURCE_DIR}/formatter_lib/
${CMAKE_CURRENT_SOURCE_DIR}/solver_lib)

target_link_libraries(solver formatter_ex_lib solver_lib) # связываем (подключаем) библиотеки к solver

install(TARGETS solver # задаем инструкции по установки
	RUNTIME DESTINATION bin
)

include(CPackConfig.cmake)
```
```
cd .github
cd .github/workflow
nano CI.yml
name: CMake

on:
 push:
   tags:
     - v**

jobs: 

  build_packages_Linux:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: Configure Solver
      run: cmake ${{github.workspace}} -B ${{github.workspace}}/build -D PRINT_VERSION=${GITHUB_REF_NAME#v}

    - name: Build Solver
      run: cmake --build ${{github.workspace}}/build

    - name: Build package
      run: cmake --build ${{github.workspace}}/build --target package

    - name: Build source package
      run: cmake --build ${{github.workspace}}/build --target package_source

    - name: Make a release
      uses: ncipollo/release-action@v1.10.0
      with:
        artifacts: "build/*.deb,build/*.rpm,build/*.tar.gz,build/*.zip"
        token: ${{ secrets.GITHUB_TOKEN }}
```
комитим а затем добавляем тэг
```
git tag v0.1
git push 
git push origin v0.1
```
![изображение](https://github.com/Wenir04/lab06/assets/113133600/bcd8bd0e-03f7-4c04-beac-7a3c317c2e7f)

