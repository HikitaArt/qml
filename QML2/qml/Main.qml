import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 2.0

App {
    color: "lightgrey"

    Rectangle{
        id: header
        width: parent.width
        height: 75
        color: "grey"

        Text{
            text: "Header"
            font.pixelSize: 18
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id: content
        anchors.margins: 10
        anchors.top: header.bottom
        anchors.left: parent.left
        width: parent.width - 20
        height: parent.height - header.height - buttons_container.height - 20
        color: "lightgrey"
        border.width: 1
        border.color: "grey"

        Text{
            text: "Сontent"
            font.pixelSize: 18
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id: buttons_container
        width: parent.width
        height: 100
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        color: "lightgrey"

        Rectangle{
            id: bt1
            width: (parent.width-20) / 3
            height: parent.height
            anchors.left: parent.left
            color: "grey"

            Text{
                text: "1"
                font.pixelSize: 18
                anchors.centerIn: parent
            }
        }
        Rectangle{
            id: bt2
            width: (parent.width-20) / 3
            height: parent.height
            anchors.left: bt1.right
            anchors.leftMargin: 10
            color: "grey"

            Text{
                text: "2"
                font.pixelSize: 18
                anchors.centerIn: parent
            }
        }
        Rectangle{
            id: bt3
            width: (parent.width-20) / 3
            height: parent.height
            anchors.right: parent.right
            color: "grey"

            Text{
                text: "3"
                font.pixelSize: 18
                anchors.centerIn: parent
            }
        }
    }
}
