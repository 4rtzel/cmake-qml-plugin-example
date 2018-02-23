# CMake QML plugin example
QML plugin example written with CMake.

## Description
There is a good tutorials and examples ([1](http://doc.qt.io/qt-5/qtqml-tutorials-extending-qml-example.html), 
[2](https://qt.developpez.com/doc/5.0-snapshot/qmllanguage-modules/), 
[3](http://doc.qt.io/qt-5/qtqml-qmlextensionplugins-example.html)) how to write 
a QML module with qmake but there is not a lot of examples how to do it with CMake.

This project show how to create a basic CMake QML plugin that exports [C++ class](plugins/my/plugin/example/myquickitem.h), 
[QML file](plugins/my/plugin/example/MyQml.qml) and [js file](plugins/my/plugin/example/MyScript.js) to QML engine.

## Project structure
Project consists of two CMake targets:
* [application target](CMakeLists.txt) - main application target that will use plugin target.
* [plugin target](plugins/my/plugin/example/CMakeLists.txt) - plugin target that exports C++ class alongside with resources.
