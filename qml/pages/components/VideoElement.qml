import QtQuick 2.0
import Sailfish.Silica 1.0
import com.verdanditeam.yt 1.0

ListItem {
    id: listItem
    onClicked: {
        video.loadStreamUrl()
        pageStack.push(Qt.resolvedUrl("../VideoPlayer.qml"), { video: video})
    }

    Column {
        Label {
            text: display
        }

        Label {
            text: video.getViewCount()
            font.pixelSize: Theme.fontSizeTiny
        }
    }
}
