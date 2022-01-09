import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents

// Item - the most basic plasmoid component, an empty container.
Item {
    Plasmoid.backgroundHints: "NoBackground"

    Plasmoid.preferredRepresentation: Plasmoid.fullRepresentation

    Plasmoid.fullRepresentation: Item {
        ColumnLayout{
            spacing: plasmoid.configuration.spacingSize

            PlasmaComponents.Label {
                text: plasmoid.configuration.titleText || "Activate Plasma"

                opacity: plasmoid.configuration.opacity

                font.family: plasmoid.configuration.fontFamily || "Noto Sans"
                font.pointSize: plasmoid.configuration.titleTextSize
                font.weight: Font.Normal
            }

            PlasmaComponents.Label {
                text: plasmoid.configuration.descriptionText || "Go to Settings to activate Plasma"

                opacity: plasmoid.configuration.opacity

                font.family: plasmoid.configuration.fontFamily || "Noto Sans"
                font.pointSize: plasmoid.configuration.descriptionTextSize
                font.weight: Font.Normal
            }
        }
    }
}
