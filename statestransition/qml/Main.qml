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

            Rectangle{
                id: backBtn
                height: parent.height-20
                width: 100
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.leftMargin: 10
                color: "white"

                visible: false

                Text{
                    id: backBtnT
                    text: "back"
                    font.pixelSize: 18
                    anchors.centerIn: parent
                }

                MouseArea{
                    anchors.fill:parent
                    onClicked: {
                        cl.state = "default"
                    }
                }
            }

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
                    anchors.fill:parent
                    onClicked: {
                        cl.state = "first"
                    }
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
                    anchors.fill:parent
                    onClicked: {
                        cl.state = "second"
                    }
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
                    anchors.fill:parent
                    onClicked: {
                        cl.state = "third"
                    }
                }
            }
        }
        states:[
            State {
                name: "default"
                PropertyChanges {
                    target: btn1
                    color: "grey"
                }
                PropertyChanges {
                    target: btn2
                    color: "grey"
                }
                PropertyChanges {
                    target: btn3
                    color: "grey"
                }
                PropertyChanges {
                    target: headerT
                    text: "header"
                }
                PropertyChanges {
                    target: contentT
                    text: "content"
                }
                PropertyChanges {
                    target: backBtn
                    color: Qt.rgba(0,0,0,0)
                    visible: false
                }
                PropertyChanges {
                    target: backBtnT
                    color: Qt.rgba(255,255,255,0)
                    visible: false
                }
            },
            State {
                name: "first"
                PropertyChanges {
                    target: btn1
                    color: "grey"
                }
                PropertyChanges {
                    target: btn2
                    color: "lightgrey"
                }
                PropertyChanges {
                    target: btn3
                    color: "lightgrey"
                }
                PropertyChanges {
                    target: headerT
                    text: "first page header"
                }
                PropertyChanges {
                    target: contentT
                    text: "first page content"
                }
                PropertyChanges {
                    target: backBtn
                    color: "white"
                    visible: true
                }
                PropertyChanges {
                    target: backBtnT
                    color: "black"
                    visible: true
                }
            },
            State {
                name: "second"
                PropertyChanges {
                    target: btn1
                    color: "lightgrey"
                }
                PropertyChanges {
                    target: btn2
                    color: "grey"
                }
                PropertyChanges {
                    target: btn3
                    color: "lightgrey"
                }
                PropertyChanges {
                    target: headerT
                    text: "second page header"
                }
                PropertyChanges {
                    target: contentT
                    text: "second page content"
                }
                PropertyChanges {
                    target: backBtn
                    color: "white"
                    visible: true
                }
                PropertyChanges {
                    target: backBtnT
                    color: "black"
                    visible: true
                }
            },
            State {
                name: "third"
                PropertyChanges {
                    target: btn1
                    color: "lightgrey"
                }
                PropertyChanges {
                    target: btn2
                    color: "lightgrey"
                }
                PropertyChanges {
                    target: btn3
                    color: "grey"
                }
                PropertyChanges {
                    target: headerT
                    text: "third page header"
                }
                PropertyChanges {
                    target: contentT
                    text: "third page content"
                }
                PropertyChanges {
                    target: backBtn
                    color: "white"
                    visible: true
                }
                PropertyChanges {
                    target: backBtnT
                    color: "black"
                    visible: true
                }
            }
        ]

        state: "default"

        transitions:[
            Transition {
                from: "default"
                to: "first"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "default"
                to: "second"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "default"
                to: "third"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "first"
                to: "default"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "second"
                to: "default"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "third"
                to: "default"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "first"
                to: "third"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "first"
                to: "second"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "second"
                to: "first"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "second"
                to: "third"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "third"
                to: "first"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }},
            Transition {
                from: "third"
                to: "second"
                ColorAnimation{
                    target: backBtn
                    duration: 250
                }
                ColorAnimation{
                    target: backBtnT
                    duration: 250
                }
                PropertyAnimation{
                    target: headerT
                    duration: 250
                }
                PropertyAnimation{
                    target: contentT
                    duration: 250
                }
                ColorAnimation {
                    target: btn2
                    duration: 250
                }
                ColorAnimation {
                    target: btn3
                    duration: 250
                }}


        ]
    }
}
