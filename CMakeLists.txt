cmake_minimum_required(VERSION 3.0)
project(app VERSION 1.0 LANGUAGES CXX)

# Tell CMake to call moc automaticly
set(CMAKE_AUTOMOC ON)

find_package(Qt5 REQUIRED COMPONENTS Quick Core Qml)

# Telling CMake location of our app .qrc file
qt5_add_resources(APP_RESOURCES ${CMAKE_CURRENT_LIST_DIR}/src/qml/app.qrc)

# We're using ${PROJECT_NAME} for target name but it's not necessary
add_executable(
    ${PROJECT_NAME}
    src/main.cpp        # Our example project consists only of one .cpp file

    ${APP_RESOURCES}    # App resources file
)

target_compile_features(
    ${PROJECT_NAME}
    PRIVATE
        cxx_auto_type
        cxx_generic_lambdas
)

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    target_compile_options(
        ${PROJECT_NAME}
        PRIVATE
            -Wall
            -Wextra
            -Wpedantic
    )
endif()

target_link_libraries(
    ${PROJECT_NAME}
    PRIVATE
        Qt5::Core
        Qt5::Quick
        Qt5::Qml
        myplugin        # Our plugin target
)

add_subdirectory(plugins)
