import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.12

App {

    property int bigMargin: 10
    property int btnMargin: 5

    ColumnLayout{
        id: cl
        spacing: bigMargin
        anchors.fill: parent

        Rectangle{
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height *0.1
            color: "grey"

            Text{
                text: "header"
                font.pixelSize: 18
                anchors.centerIn: parent
            }
        }
        Rectangle{
            Layout.preferredWidth: parent.width - bigMargin*2
            Layout.preferredHeight: parent.height *0.75
            Layout.alignment: Qt.AlignHCenter
            color: "lightgray"

            Text{
                text: "Content"
                font.pixelSize: 18
                anchors.centerIn: parent
            }
        }
        RowLayout{
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height *0.15
            Layout.alignment: Qt.AlignHCenter
            spacing: btnMargin

            Rectangle{
                id: btn1
                Layout.preferredWidth: parent.width / 3
                Layout.preferredHeight: parent.height
                color: "grey"

                Text{
                    text: "1"
                    font.pixelSize: 18
                    anchors.centerIn: parent
                }
            }
            Rectangle{
                id: btn2
                Layout.preferredWidth: parent.width / 3
                Layout.preferredHeight: parent.height
                color: "grey"

                Text{
                    text: "2"
                    font.pixelSize: 18
                    anchors.centerIn: parent
                }
            }
            Rectangle{
                id: btn3
                Layout.preferredWidth: parent.width / 3
                Layout.preferredHeight: parent.height
                color: "grey"

                Text{
                    text: "3"
                    font.pixelSize: 18
                    anchors.centerIn: parent
                }
            }
        }
    }
}
