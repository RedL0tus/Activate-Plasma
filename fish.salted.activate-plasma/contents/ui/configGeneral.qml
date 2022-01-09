import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import org.kde.kirigami 2.4 as Kirigami

Item {
    id: page
    width: childrenRect.width
    height: childrenRect.height

    property alias cfg_titleText: titleText.text
    property alias cfg_descriptionText: descriptionText.text
    property alias cfg_titleTextSize: titleTextSize.value
    property alias cfg_descriptionTextSize: descriptionTextSize.value
    property alias cfg_spacingSize: spacingSize.value
    property alias cfg_opacity: opacity.value
    property alias cfg_fontFamily: fontFamily.text

    Kirigami.FormLayout {
        anchors.left: parent.left
        anchors.right: parent.right

        TextField {
            id: titleText
            Kirigami.FormData.label: i18n("Title text:")
            placeholderText: i18n("Activate Plasma")
        }
        TextField {
            id: descriptionText
            Kirigami.FormData.label: i18n("Description text:")
            placeholderText: i18n("Go to Settings to activate Plasma")
        }
        Slider {
            id: titleTextSize
            Kirigami.FormData.label: i18n("Title text size:")
            Layout.fillWidth: true
            from: 0
            to: 50
            stepSize: 1
        }
        Slider {
            id: descriptionTextSize
            Kirigami.FormData.label: i18n("Description text size:")
            Layout.fillWidth: true
            from: 0
            to: 50
            stepSize: 1
        }
        Slider {
            id: spacingSize
            Kirigami.FormData.label: i18n("Spacing size:")
            Layout.fillWidth: true
            from: 0
            to: 10
            stepSize: 0.5
        }
        Slider {
            id: opacity
            Kirigami.FormData.label: i18n("Opacity:")
            Layout.fillWidth: true
            from: 0
            to: 1
            stepSize: 0.1
        }
        TextField {
            id: fontFamily
            Kirigami.FormData.label: i18n("Font family:")
            placeholderText: "Noto Sans"
        }
    }
}
