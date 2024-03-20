import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
  implicitHeight: sleepButton.height
  implicitWidth: sleepButton.width
  Button {
    id: sleepButton
    height: inputHeight
    width: inputHeight
    hoverEnabled: true
    icon {
      source: Qt.resolvedUrl("../icons/sleep.svg")
      height: height
      width: width
      color: config.crust
    }
    background: Rectangle {
      id: sleepButtonBg
      color: config.surface0
      radius: 3
    }
    states: [
      State {
        name: "hovered"
        when: sleepButton.hovered
        PropertyChanges {
          target: sleepButtonBg
          color: config.surface1
        }
      }
    ]
    transitions: Transition {
      PropertyAnimation {
        properties: "color"
        duration: 200
      }
    }
    onClicked: sddm.suspend()
  }
}
