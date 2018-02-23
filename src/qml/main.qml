import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.platform 1.0

// Load our plugin from filesystem
import my.plugin.example 1.0 as MyPlugin

import "plugin/MyScript.js" as MyScript

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Lyzer"

    // 'myplugin' C++ class
    MyPlugin.MyQuickItem {
        id: pluginItem
        color: "green"
        width: 100
        height: 50
        anchors.centerIn: parent
    }

    // 'myplugin' QML file
    MyPlugin.MyQml {
        anchors.top: pluginItem.bottom
        anchors.horizontalCenter: pluginItem.horizontalCenter
        width: pluginItem.width
        onClicked: {
            MyScript.onClicked(pluginItem);
        }
    }
}
