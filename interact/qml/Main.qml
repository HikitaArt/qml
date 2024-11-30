import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.12

App {

    property int bigMargin: 10
    property int btnMargin: 5
    property color btn1ExitColor: "lightgrey"
    property color btn2ExitColor: "lightgrey"
    property color btn3ExitColor: "lightgrey"

    ColumnLayout{
        id: cl
        spacing: bigMargin
        anchors.fill: parent

        Rectangle{
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height *0.1
            color: "grey"

            Text{
                id: headerT
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
                id: contentT
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

                MouseArea{
                    hoverEnabled: true
                    anchors.fill: parent
                    onPressed: {
                        btn1.color="grey";
                        btn1ExitColor="grey";
                        btn2.color="lightgrey";
                        btn2ExitColor="lightgrey";
                        btn3.color="lightgrey";
                        btn3ExitColor="lightgrey";
                        headerT.text = "first page header"
                        contentT.text = "first page header"
                    }
                    onEntered: parent.color="darkgrey"
                    onExited: parent.color=btn1ExitColor
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

                MouseArea{
                    hoverEnabled: true
                    anchors.fill: parent
                    onPressed: {
                        btn2.color="grey";
                        btn2ExitColor="grey";
                        btn1.color="lightgrey";
                        btn1ExitColor="lightgrey";
                        btn3.color="lightgrey";
                        btn3ExitColor="lightgrey";
                        headerT.text = "second page header"
                        contentT.text = "second page header"
                    }
                    onEntered: parent.color="darkgrey"
                    onExited: parent.color=btn2ExitColor
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

                MouseArea{
                    hoverEnabled: true
                    anchors.fill: parent
                    onPressed: {
                        btn3.color="grey";
                        btn3ExitColor="grey";
                        btn2.color="lightgrey";
                        btn2ExitColor="lightgrey";
                        btn1.color="lightgrey";
                        btn1ExitColor="lightgrey";
                        headerT.text = "third page header"
                        contentT.text = "third page header"
                    }
                    onEntered: parent.color="darkgrey"
                    onExited: parent.color=btn3ExitColor
                }
            }
        }
    }
}
