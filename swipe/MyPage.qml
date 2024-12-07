import QtQuick 2.0
import Felgo 3.0
import QtQuick.Controls 2.5

Item {
    id: root
    property alias bgColor: rect.color
    property alias btnText1: txt1.text
    property alias btnText2: txt2.text
    property alias visibility: backBtn.visible
    signal rightButton();
    signal leftButton();
    signal popPage();

    Rectangle{
        id: rect
        anchors.fill: parent
        color: "blue"

        Button{
            id: backBtn
            visible: false
            width: 100
            height: 25
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.margins: 20

            Text{
                text: "back"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            onClicked: {
                root.popPage()
            }
        }
        Button{
            width: 100
            height: 50
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.margins: 20
            Text{
                id: txt1
                anchors.centerIn: parent
                text: "выаыу"
                font.pixelSize: 16
            }
            onClicked:{
                root.leftButton()
            }
        }
        Button{
            width: 100
            height: 50
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.margins: 20
            Text{
                id: txt2
                anchors.centerIn: parent
                text: "выаыу"
                font.pixelSize: 16
            }
            onClicked:{
                root.rightButton()
            }
        }
    }

}
