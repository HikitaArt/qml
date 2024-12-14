import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3

Window {
    width: 400
    height: 600
    property int myMargin: 10
    property string myLogin: "123"
    property string myPassword: "456"
    property string writtenPassword: ""
    /*
    Page{
        id: p1
        anchors.fill: parent
        Rectangle{
            id: login_password
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "lightblue" }
                GradientStop { position: 2.0; color: "blue" }
            }
            Text{
                id: congrat
                width: login.width + 100
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Congrat! You are authorized.\n I scared of changing page with swipe or stack view"
                horizontalAlignment: Text.AlignHCenter
                anchors.bottom: login.top
                anchors.bottomMargin: myMargin*2
                font.pixelSize: 16
                visible: false

            }
            Text{
                id: error
                width: login.width + 100
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Login or password incorrect"
                horizontalAlignment: Text.AlignHCenter
                anchors.bottom: login.top
                anchors.bottomMargin: myMargin*2
                font.pixelSize: 16
                visible: false
                color: "red"

            }

            TextField{
                id: login
                anchors.centerIn: parent
                height: 45
                placeholderText: "login"
                font.pixelSize: 20

            }
            TextField{
                id: pass
                anchors.top: login.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: myMargin
                height: 45
                placeholderText: "password"
                font.pixelSize: 20
                echoMode: TextInput.Password
            }
            Button{
                id: enter
                width: (pass.width - myMargin)/2
                anchors.top: pass.bottom
                anchors.left: pass.left
                anchors.topMargin: myMargin

                Text{
                    text: "enter"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                }
                onClicked: {
                    if (login.text === myLogin && pass.text === myPassword){
                        congrat.visible = true
                        error.visible = false
                    }
                    else{
                        error.visible = true
                        pass.clear()
                    }

                }
            }
            Button{
                id: clear
                width: (pass.width - myMargin)/2
                anchors.top: pass.bottom
                anchors.left: enter.right
                anchors.leftMargin: myMargin
                anchors.topMargin: myMargin

                Text{
                    text: "clear"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                }

                onClicked: {
                    login.clear()
                    pass.clear()
                    error.visible = false
                    congrat.visible = false
                }
            }
        }
    }*/
    Page{
        id: p2
        anchors.fill: parent
        Rectangle{
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "lightblue" }
                GradientStop { position: 2.0; color: "blue" }
            }
            Text {
                id: txt
                text: "Enter your password:"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: passwordField.top
                anchors.bottomMargin: myMargin
            }
            Text {
                id: congrat
                text: "You are in"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: passwordField.top
                anchors.bottomMargin: myMargin
                visible: false
            }
            Text {
                id: error
                text: "Wrong password"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: passwordField.top
                anchors.bottomMargin: myMargin
                visible: false
            }
            Rectangle {
                id: passwordField
                color: "white"
                border.width: 2
                border.color: "black"
                width: parent.width
                height: 50
                Layout.alignment: Qt.AlignCenter
                anchors.bottom: keypad.top
                anchors.bottomMargin: myMargin*4
                Row {
                    spacing: 6
                    anchors.centerIn: parent
                    Repeater {
                        model:6
                        Label {
                            width: 20
                            height: 20
                            font.pixelSize: 36
                            text: "*"
                            Layout.alignment: Qt.AlignCenter
                            color:index <writtenPassword.length ? "black" : "light grey"
                        }
                    }
                }
            }

            GridLayout{
                id: keypad
                columns: 3
                rows: 4
                rowSpacing: myMargin
                columnSpacing: myMargin
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: myMargin*10
                Button{
                    text: "1"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "1"}
                }
                Button{
                    text: "2"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "2"}
                }
                Button{
                    text: "3"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "3"}
                }
                Button{
                    text: "4"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "4"}
                }
                Button{
                    text: "5"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "5"}
                }
                Button{
                    text: "6"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "6"}
                }
                Button{
                    text: "7"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "7"}
                }
                Button{
                    text: "8"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "8"}
                }
                Button{
                    text: "9"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "9"}
                }
                Button{
                    text: "enter"
                    onClicked: if (writtenPassword === myPassword){txt.visible = false; congrat.visible = true; error.visible = false}
                               else{writtenPassword = ""; txt.visible = false; error.visible = true; congrat.visible = false}
                }
                Button{
                    text: "0"
                    onClicked: if (writtenPassword.length <6){ writtenPassword += "0"}
                }
                Button{
                    text: "clear"
                    onClicked: {writtenPassword = ""; txt.visible = true; congrat.visible = false; error.visible = false}
                }
            }
        }
    }
}
