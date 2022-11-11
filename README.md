# Private Internet Sicherheit

## Inhaltsverzeichnis
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [Einleitung](#einleitung)
- [Sicherheit](#sicherheit)
- [Das Internet](#das-internet)
- [Privat](#privat)
- [weitere Informationen](#weitere-informationen)

<!-- /TOC -->

## Einleitung

In Private Internet Sicherheit geht es um Ihr ganz individuelles bzw. persönliches Sicherheitsgefühl im Internet. Ja ich (*[Heinz Mielimonka](https://meine.kommunikation-im-zentrum.de/nextcloud/u/Heinz.Mielimonka)*) schreibe bewusst Gefühl (*siehe dazu auch [Sicherheit](https://de.wikipedia.org/wiki/Sicherheit) in Bezug auf Risiko- und Gefahrenvermeidung*). Das zweite Schlüsselwort hier ist Internet. Natürlich kann man sich auch hier technisch nähern (*siehe [Wikipedia](https://de.wikipedia.org/wiki/Internet)*) das möchten wir allerdings nicht tun. Auch das Internet soll in diesem Kontext eher "gefühlt" als "verstanden" werden. Dazu später mehr.

Es soll also im Wesentlichen darum gehen Sie in die Lage zu versetzen die für Sie persönlich relevanten Risiken in Bezug auf Ihre Internetaktivitäten erkennen und bewerten zu können.

In weiteren vertiefenden Kapiteln werden wir auch konkrete Massnahmen vorstellen um ggf. erkannte Risiken abzumildern.

Es geht also ausschließlich um Sie.

## Sicherheit

Sicherheit bezeichnet allgemein den Zustand, der für Individuen, Gemeinschaften sowie andere Lebewesen, Objekte und Systeme frei von unvertretbaren Risiken ist oder als gefahrenfrei angesehen wird. (*Quelle: [Wikipedia](https://de.wikipedia.org/wiki/Sicherheit)*)

Sie, ganz persönlich, entscheiden was für Sie ein unvertretbares Risiko bzw. gefahrenfrei ist. Wir wollen Ihnen eine Entscheidungshilfe und Einordnung dafür anbieten.

Das Bundesamt für Sicherheit in der Informationstechnik (*BSI*) bietet hierfür einen guten Einstieg:

[<img alt="Basiselemente der IT-Sicherheit" src="https://www.bsi.bund.de/SharedDocs/Bilder/DE/BSI/Infografiken/basiselemente-it-sicherheit.png?__blob=normal&v=2" title="Basiselemente der IT-Sicherheit" width="100%">](https://www.bsi.bund.de/DE/Themen/Verbraucherinnen-und-Verbraucher/Informationen-und-Empfehlungen/Cyber-Sicherheitsempfehlungen/cyber-sicherheitsempfehlungen_node.html)

Leider sind die hier angesprochenen Themen (*Update, Passwörter, Zwei-Faktor-Authentisierung, Virenschutzprogramm, Firewall*) sehr technische Begriffe. Lassen Sie uns diese später (*siehe dazu auch Kapitel [Privat](#privat)*) in einen Ihnen verständlichen Kontext bringen.

## Das Internet

Wie ja bereits angesprochen geht es hier nicht um eine technische Erklärung. Vielmehr möchten wir dass Sie sicht bewusst machen, dass das Internet eine eigene "Welt" darstellt. Eine Welt mit eigenen "Regeln".

[<img alt="Das Internet - eine eigene Welt" src="https://upload.wikimedia.org/wikipedia/commons/d/d2/Internet_map_1024.jpg" title="Das Internet - eine eigene Welt" width="100%">](https://de.wikipedia.org/wiki/Internet)

Lassen Sie mich das etwas ausführlicher illustrieren.

Die reale Welt in der wir uns natürlicherweise bewegen kann man in folgende "Räume" oder "Bereiche" gliedern:
- Global (*Welt, Internet, [Internet der Dinge](https://de.wikipedia.org/wiki/Internet_der_Dinge), eingeschränkt auch Menschenrechte*)
-	National (*z.B. Deutschland, [Deutsche Sprache](https://de.wikipedia.org/wiki/Deutsche_Sprache), deutsches Steuerrecht, Demokratie*)
-	Lokal (*z.B. Husum, [Platt](https://de.wikipedia.org/wiki/Platt)*)
-	Privat (*Haus bzw. Wohnung, [Internet der Dinge](https://de.wikipedia.org/wiki/Internet_der_Dinge) (z.B. Saugroboter)*)

In diesen "Räumen" bewegen Sie sich i.d.R. bewusst bzw. Sie erkennen z.B. bei einem Skiausflug mit dem Auto von [Husum nach Chamonix](https://www.openstreetmap.org/directions?engine=fossgis_osrm_car&route=54.485%2C9.054%3B45.925%2C6.873) sehr konkret sich verändernde Sprachen oder ähnliches wie z.B. Verkehrsregeln.

Leider ist das bei einem Webseiten-Besuch, hier am Beispiel [tchibo.de (*dieser Link führt zur Webseite des Unternehmens*)](https://www.tchibo.de/), nicht ganz so transparent. So führte mich das Beispiel [tchibo.de (*dieser Link überprüft Datenschutzfunktionen)*](https://webbkoll.dataskydd.net/de/results?url=http%3A%2F%2Ftchibo.de) nach Frankfurt am Main und bog im Hintergrund 13 Mal für Anfragen bei Drittanbietern vom "Weg" ab. Diese Drittanbieter

- [cdn.cookielaw.org](https://tools.keycdn.com/geo?host=cdn.cookielaw.org) (*?*)
- [geolocation.onetrust.com ](https://tools.keycdn.com/geo?host=geolocation.onetrust.com) (*USA*)
- [p.typekit.net](https://tools.keycdn.com/geo?host=p.typekit.net) (*Frankfurt am Main*)
- [use.typekit.net](https://tools.keycdn.com/geo?host=use.typekit.net) (*Frankfurt am Main*)
- [www.googletagmanager.com](https://tools.keycdn.com/geo?host=www.googletagmanager.com) (*USA*)

gehen Ihrerseits wieder verschiedene Wege ... Machen Sie sich einfach bewusst, dass das Internet all diese "Räume" zugleich umfasst und Sie i.d.R. nicht wissen wo Sie sich gerade "aufhalten".

Das illustriert ein wenig wo ggf. Risiken im Internet entstehen können.

## Privat

Auch hier lassen Sie uns ein Gedankengerüst, ähnlich wie für das [Internet](#das-internet), entwerfen.

In unserem Gedankengerüst leben Sie in einem freistehenden Haus mit Garten.

[<img alt="Haus mit Garten" src="https://upload.wikimedia.org/wikipedia/commons/c/c7/Radebeul_Grundhof56a.jpg" title="Haus mit Garten" width="100%">](https://de.wikipedia.org/wiki/Haus_im_Garten)

In Ihrem großzügigen Garten lebt ihr Wachhund (*Virenschutzprogramm*) und der Gartenzaun (*Firewall*) sorgt dafür, dass weder Hund noch Kind auf die Straße laufen können (*Schutz von innen nach außen*) noch ungebetene Dritte auf Ihr Grundstück (*Schutz von außen nach innen*) kommen können.

Ihre Haustür verschließen Sie immer sorgfältig mit Ihrem Hausschlüssel (*Passwort*) und wenn Sie das Haus für längere Zeit (*z.B. Urlaub*) verlassen kommt zusätzlich zum Hausschlüssel ein [Querriegelschloss](https://de.wikipedia.org/wiki/Querriegelschloss) mit gesondertem Schlüssel (*Zwei-Faktor-Authentisierung*) zum Einsatz.

Wenn Sie den Hausarzt Ihres Vertrauens aufsuchen, erwarten Sie, dass dieser mit aktuellem medizinischem Wissen (*Update*) ausgestattet ist und Ihnen dadurch gut helfen kann.

Die im Kapitel [Sicherheit](#sicherheit) angesprochenen technischen Begriffe (*Update, Passwörter, Zwei-Faktor-Authentisierung, Virenschutzprogramm, Firewall*) sind jetzt hoffentlich leichter für Sie fassbar.

Basierend auf Ihrer persönlichen Risikobereitschaft können Sie jetzt z.B. bestimmen ob Sie gerne einen stabileren Zaun (*Firewall*) anschaffen möchten damit Ihre Kinder sicherer in Ihrem Garten spielen können.

Machen Sie sich einfach bewusst, **warum** Sie **was**, **wie** verändern möchten.

Am Ende möchte ich Ihnen zu diesem Themenkomplex den Kommentar [Digitale Selbstbestimmung – Eine Einordnung](https://www.kuketz-blog.de/kommentar-digitale-selbstbestimmung-eine-einordnung/) von [Mike Kuketz](https://www.kuketz-blog.de/ueber-mich/) (*Neben seiner freiberuflichen Tätigkeit ist Mike zu 50 % bei der Dienststelle des [Landesbeauftragten für den Datenschutz und die Informationsfreiheit Baden-Württemberg](https://www.baden-wuerttemberg.datenschutz.de/) (LfDI BW) angestellt.*) empfehlen. Mike Kuketz hat auch eine Veröffentlichung über [Ungewöhnliche IT-Sicherheits- und Datenschutztipps](https://www.kuketz-blog.de/ungewoehnliche-it-sicherheits-und-datenschutztipps-teil2/) schauen Sie bei Interesse gerne mal rein.



## weitere Informationen

- [Bundesamt für Sicherheit in der Informationstechnik (*BSI*)](https://www.bsi.bund.de/DE/Das-BSI/Auftrag/auftrag_node.html)
  - Der [Verbraucherschutz-Newsletter "Sicher • Informiert"](https://www.bsi.bund.de/dok/6722626) richtet sich an alle, die über die wichtigsten Ereignisse rund um die Sicherheit Ihres Computers und im Internet auf dem Laufenden gehalten werden wollen. Der Newsletter erscheint alle vierzehn Tage. Im Falle einer besonders akuten Gefahrensituation informieren wir Sie unmittelbar mit einer Extraausgabe des Newsletters. Alle Informationen werden leicht verständlich erklärt.
- [Mike Kuketz](https://www.kuketz-blog.de/ueber-mich/) (*Neben seiner freiberuflichen Tätigkeit ist Mike zu 50 % bei der Dienststelle des [Landesbeauftragten für den Datenschutz und die Informationsfreiheit Baden-Württemberg](https://www.baden-wuerttemberg.datenschutz.de/) (LfDI BW) angestellt.*)
  - [Datenhändler: Wir sind gläsern – Datensammler Teil1](https://www.kuketz-blog.de/datenhaendler-wir-sind-glaesern-datensammler-teil1/)

### Vertiefung einiger Risikobereiche

- Firewall (*[FRITZ!Box 4040 und Netzwerkaufbau – OpenWrt](https://www.kuketz-blog.de/fritzbox-4040-und-netzwerkaufbau-openwrt-teil1/), [DNS based ad/abuse domain blocking](https://github.com/openwrt/packages/blob/master/net/adblock/files/README.md)*)
- Passwort (*[Passwort-Manager](https://www.kuketz-blog.de/empfehlungsecke/#passwort-manager), [Diceware](https://de.wikipedia.org/wiki/Diceware)*)


### Videos (*Komplexität ganz einfach erklärt*)
- [Wie funktioniert das Internet?](https://www.youtube.com/watch?v=fpqhjEtznVk)
- [Der Internet-Check ](https://www.youtube.com/watch?v=i7cYePelQH4)
- [Wie kommen die Daten in die Cloud?](https://www.youtube.com/watch?v=eJE_32_5SfE)
- [Wie funktioniert eine Firewall?](https://www.youtube.com/watch?v=qDr39p6pxVM)
- [Sicher Surfen im Netz](https://www.youtube.com/watch?v=NJomSq7q9Ok)
