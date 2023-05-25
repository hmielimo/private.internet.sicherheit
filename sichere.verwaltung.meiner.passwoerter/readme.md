# Sicher ist sicher (*Sichere Verwaltung meiner Passwörter*)

## Inhaltsverzeichnis
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [**Home** (*zurück zu Private Internet Sicherheit*)](https://github.com/hmielimo/private.internet.sicherheit)
- [Einleitung](#einleitung)
- [Passwoerter und Schluessel](#passwoerter-und-schluessel)
- [Einbindung und Integration](#einbindung-und-integration)

<!-- /TOC -->

## Einleitung

Hier stelle ich Ihnen an einem konkreten Beispiel (*Passwort-Manager, Diceware, Friesencloud*) vor, wie Sie Ihre Passwörter sicher verwalten und auch auf allen Endgeräten (*z.B. Handy*) verfügbar machen können.

## Passwoerter und Schluessel

Alle Passwörter und Schlüssel sind im Verzeichnis C:\Users\[Benutzername]\Nextcloud\Passwort hinterlegt. Dieses Verzeichnis ist mit [Cryptomator](https://cryptomator.org/de/) verschlüsselt. Das Passwort zur Entschlüsselung wird nach jedem Neustart abgefragt. Zusätzlich befindet sich in diesem Verzeichnis ein [KeePassXC](https://keepassxc.org/) Tresor (Passwort.kdbx). Das Passwort zur Entschlüsselung dieses Tresors wird ebenfalls nach jedem Neustart abgefragt. In diesem Tresor befinden sich neben allen Passwörtern und Keys auch sonsigen für Sie relevanten Geheimnisse.

Der einzige Schlüssel der nicht gespeichert wird is das Passwort mit dem Sie das Cryptomator Verzeichnis und den Tresor verschlüsseln. Dieses Passwort müssen Sie sich merken und es muss sicher sein. [**Diceware**](https://de.wikipedia.org/wiki/Diceware) hilft Ihnen dabei ein geeignetes Passwort zu finden.

## Einbindung und Integration

<img alt="Einbindung und Integration in Friesencloud" src="../images/sync.png" title="Einbindung und Integration in Friesencloud" width="100%">

### Einbindung

Die mit KeePassXC verwalteten Passwörter stehen durch die [Browser Integration](https://keepassxc.org/docs/KeePassXC_GettingStarted#_setup_browser_integration) z.B. in Chrome, Firefox oder Microsoft Edge zur Verfügung. [KeePassDX](https://play.google.com/store/apps/details?id=com.kunzisoft.keepass.free) ermöglicht das auch auf Android und [Strongbox](https://apps.apple.com/us/app/strongbox-password-safe/id897283731) auf iOS.

### Integration in Friesencloud
Das Verzeichnis C:\Users\[Benutzername]\Nextcloud\Passwort wird mit dem [Nextcloud Desktop Client](https://docs.nextcloud.com/desktop/3.8/) automatisch mit Ihrer [Friesencloud](https://www.stadtwerke-husum.de/friesencloud/) syncronisiert. Eine automatiche Syncronisation steht ebenfalls für [Android](https://play.google.com/store/apps/details?id=com.nextcloud.client&hl=en&gl=US) und [iOS](https://apps.apple.com/nl/app/nextcloud/id1125420102) zur Verfügung.
