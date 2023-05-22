# Die Bösen bleiben draußen (*Meine zentrale Firewall*)

## Inhaltsverzeichnis
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [**Home** (*zurück zu Private Internet Sicherheit*)](https://github.com/hmielimo/private.internet.sicherheit)
- [Einleitung](#einleitung)


<!-- /TOC -->

## Einleitung

Hier stelle ich Ihnen an einem konkreten Beispiel (*FritzBox, OpenWrt*) vor, wie Sie bei sich zuhause mit vergleichsweise einfachen Mitteln die Internet-Sicherheit verbessern können. Wir erstellen einen individuell eingerichteten Router (*z.B. gebrauchte FritzBox*) mit folgenden Sicherheitsmerkmalen:
- Keine Werbung und Tracker mit Adblock-Addon
- Verschlüsselte DNS Anfragen
- Firewall zur Kontrolle des Datenverkehrs
- Drei (*LAN1, LAN2, LAN3*) getrennte Netzwerke zur besseren Trennung (*z.B. PV Anlage, internetfähige Geräte (z.B. Fernseher, Mähroboter, Saug- und Wisch-Roboter)*)
- Sicheres (*u.a. ohne Client-to-Client Kommunikation*) WiFi mit Fast Roaming

Das könnte dann in etwa so aussehen:
<img alt="Private Internet Sicherheit" src="../images/privates.sicheres.netzwerk.png" title="Private Internet Sicherheit" width="100%">

Komponenten:
- ISP Router <img alt="ISP Router" src="../images/isp.router.png" title="ISP Router" width="60%">
- Privater bzw. eigener Router <img alt="Privater Router" src="../images/privater.router.png" title="Privater Router" width="60%">
