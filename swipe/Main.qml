import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
import QtQuick.Layouts 1.3

App {
    StackView{
        id: stack_view
        anchors.fill: parent
        initialItem: page1

    }
    Page{
        id: page1
        anchors.fill: parent
        Rectangle{
            anchors.fill: parent
            color: "lightblue"

            Button{
                width: 100
                height: 50
                anchors.centerIn: parent

                Text{
                    text: "to red page"
                    anchors.centerIn: parent
                    font.pixelSize: 16
                }

                onClicked: {
                    stack_view.push(page2)
                }
            }
        }
    }
    MyPage{
        id: page2
        visibility: stack_view.depth>1
        bgColor: "red"
        btnText1: "to first page"
        btnText2: "to yellow page"
        onPopPage: {
            stack_view.pop()
        }
        onLeftButton: {
            stack_view.pop(page1)
            stack_view.push(page1)
        }
        onRightButton: {
            stack_view.push(page3)
        }
    }
    MyPage{
        id: page3
        visibility: stack_view.depth>1
        bgColor: "yellow"
        btnText1: "to red page"
        btnText2: "to green page"
        onPopPage: {
            stack_view.pop()
        }
        onLeftButton: {
            stack_view.pop(page2)
            stack_view.push(page2)
        }
        onRightButton: {
            stack_view.push(page4)
        }
    }
    MyPage{
        id: page4
        visibility: stack_view.depth>1
        bgColor: "green"
        btnText1: "to yellow page"
        btnText2: "to red page"
        onPopPage: {
            stack_view.pop()
        }
        onRightButton: {
            stack_view.pop(page2)
            stack_view.push(page2)
        }
        onLeftButton: {
            stack_view.pop(page3)
            stack_view.push(page3)
        }
    }
}
