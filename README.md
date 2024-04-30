# <img alt="Private Internet Sicherheit" src="images/Private.Internet.Sicherheit.png" title="Private Internet Sicherheit" width="10%" style="float:left"> Private Internet Sicherheit
<br><br>
## Inhaltsverzeichnis
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [Einleitung](#einleitung)
- [Begriffsklärung und Gedankengerüst](#begriffsklärung-und-gedankengerüst)
  - [Sicherheit](#sicherheit)
  - [Das Internet](#das-internet)
  - [Privat](#privat)
  - [Kommunikation mit dem Internet](#kommunikation-mit-dem-internet)
  - [Anbindung an das Internet](#anbindung-an-das-internet)
- [weitere Informationen](#weitere-informationen)

<!-- /TOC -->

## Einleitung

In Private Internet Sicherheit geht es um Ihr ganz individuelles bzw. persönliches Sicherheitsgefühl im Internet. Ja ich (*[Heinz Mielimonka](https://meine.kommunikation-im-zentrum.de/nextcloud/u/Heinz.Mielimonka)*) schreibe bewusst Gefühl (*siehe dazu auch [Sicherheit](https://de.wikipedia.org/wiki/Sicherheit) in Bezug auf Risiko- und Gefahrenvermeidung*). Das zweite Schlüsselwort hier ist Internet. Natürlich kann man sich auch hier technisch nähern (*siehe [Wikipedia](https://de.wikipedia.org/wiki/Internet)*) das möchten wir allerdings nicht tun. Auch das Internet soll in diesem Kontext eher "gefühlt" als "verstanden" werden. Dazu später mehr.

Es soll also im Wesentlichen darum gehen Sie in die Lage zu versetzen die für Sie persönlich relevanten Risiken in Bezug auf Ihre Internetaktivitäten erkennen und bewerten zu können.

In weiteren vertiefenden Kapiteln werden wir auch konkrete Massnahmen vorstellen um ggf. erkannte Risiken abzumildern.

Es geht also ausschließlich um Sie. Ich gebe dazu auch [Kurse an der VHS Husum](https://vhs-husum.de/ueber-uns/unsere-dozenten/dozent/Mielimonka-Heinz/3206).

## Begriffsklärung und Gedankengerüst

### Sicherheit

Sicherheit bezeichnet allgemein den Zustand, der für Individuen, Gemeinschaften sowie andere Lebewesen, Objekte und Systeme frei von unvertretbaren Risiken ist oder als gefahrenfrei angesehen wird. (*Quelle: [Wikipedia](https://de.wikipedia.org/wiki/Sicherheit)*)

Sie, ganz persönlich, entscheiden was für Sie ein unvertretbares Risiko bzw. gefahrenfrei ist. Wir wollen Ihnen eine Entscheidungshilfe und Einordnung dafür anbieten.

Das Bundesamt für Sicherheit in der Informationstechnik (*BSI*) bietet hierfür einen guten Einstieg:

[<img alt="Basiselemente der IT-Sicherheit" src="https://www.bsi.bund.de/SharedDocs/Bilder/DE/BSI/Infografiken/basiselemente-it-sicherheit.png?__blob=normal&v=2" title="Basiselemente der IT-Sicherheit" width="100%">](https://www.bsi.bund.de/DE/Themen/Verbraucherinnen-und-Verbraucher/Informationen-und-Empfehlungen/Cyber-Sicherheitsempfehlungen/cyber-sicherheitsempfehlungen_node.html)

Leider sind die hier angesprochenen Themen (*Update, Passwörter, Zwei-Faktor-Authentisierung, Virenschutzprogramm, Firewall*) sehr technische Begriffe. Lassen Sie uns diese später (*siehe dazu auch Kapitel [Privat](#privat)*) in einen Ihnen verständlichen Kontext bringen.

### Das Internet

Wie ja bereits angesprochen geht es hier nicht um eine technische Erklärung. Vielmehr möchten wir dass Sie sich bewusst machen, dass das Internet eine eigene "Welt" darstellt. Eine Welt mit eigenen "Regeln".

[<img alt="Das Internet - eine eigene Welt" src="https://upload.wikimedia.org/wikipedia/commons/d/d2/Internet_map_1024.jpg" title="Das Internet - eine eigene Welt" width="100%">](https://de.wikipedia.org/wiki/Internet)

Lassen Sie mich das etwas ausführlicher illustrieren.

Die reale Welt in der wir uns natürlicherweise bewegen kann man in folgende "Räume" oder "Bereiche" gliedern:
- Global (*Welt, Internet, [Internet der Dinge](https://de.wikipedia.org/wiki/Internet_der_Dinge), eingeschränkt auch Menschenrechte*)
-	National (*z.B. Deutschland, [Deutsche Sprache](https://de.wikipedia.org/wiki/Deutsche_Sprache), deutsches Steuerrecht, Demokratie*)
-	Lokal (*z.B. Husum, [Platt](https://de.wikipedia.org/wiki/Platt)*)
-	Privat (*Haus bzw. Wohnung, [Internet der Dinge](https://de.wikipedia.org/wiki/Internet_der_Dinge) (z.B. Saugroboter)*)

In diesen "Räumen" bewegen Sie sich i.d.R. bewusst bzw. Sie erkennen z.B. bei einem Skiausflug mit dem Auto von [Husum nach Chamonix](https://www.openstreetmap.org/directions?engine=fossgis_osrm_car&route=54.485%2C9.054%3B45.925%2C6.873) sehr konkret sich verändernde Sprachen oder ähnliches wie z.B. Verkehrsregeln.

Leider ist das bei einem Webseiten-Besuch, hier am Beispiel [tchibo.de (*dieser Link führt zur Webseite des Unternehmens*)](https://www.tchibo.de/), nicht ganz so transparent. So führte mich das Beispiel [tchibo.de (*dieser Link überprüft Datenschutzfunktionen)*](https://webbkoll.dataskydd.net/de/results?url=http%3A%2F%2Ftchibo.de) nach Frankfurt am Main und bog im Hintergrund 13 Mal für Anfragen bei Drittanbietern vom "Weg" ab. Diese Drittanbieter

- 7 mal nach [cdn.cookielaw.org](https://ipgeolocation.io/ip-location/cdn.cookielaw.org) (*San Francisco (USA)*)
- 1 mal nach [geolocation.onetrust.com](https://ipgeolocation.io/ip-location/geolocation.onetrust.com) (*San Francisco (USA)*)
- 1 mal nach [p.typekit.net](https://ipgeolocation.io/ip-location/p.typekit.net) (*Frankfurt am Main (Deutschland)*)
- 2 mal nach [use.typekit.net](https://ipgeolocation.io/ip-location/use.typekit.net) (*Frankfurt am Main (Deutschland)*)
- 2 mal [www.googletagmanager.com](https://ipgeolocation.io/ip-location/www.googletagmanager.com) (*Mountain View (USA)*)

gehen Ihrerseits wieder verschiedene Wege ... Machen Sie sich einfach bewusst, dass das Internet all diese "Räume" zugleich umfasst und Sie i.d.R. nicht wissen wo Sie sich gerade "aufhalten".

Das illustriert ein wenig wo ggf. Risiken im Internet entstehen können.

### Privat

Auch hier lassen Sie uns ein Gedankengerüst, ähnlich wie für das [Internet](#das-internet), entwerfen.

In unserem Gedankengerüst leben Sie in einem freistehenden Haus mit Garten.

[<img alt="Haus mit Garten" src="https://upload.wikimedia.org/wikipedia/commons/c/c7/Radebeul_Grundhof56a.jpg" title="Haus mit Garten" width="100%">](https://de.wikipedia.org/wiki/Haus_im_Garten)

In Ihrem großzügigen Garten lebt ihr Wachhund (*Virenschutzprogramm*) und der Gartenzaun (*Firewall*) sorgt dafür, dass weder Hund noch Kind auf die Straße laufen können (*Schutz von innen nach außen*) noch ungebetene Dritte auf Ihr Grundstück (*Schutz von außen nach innen*) kommen können.

Ihre Haustür verschließen Sie immer sorgfältig mit Ihrem Hausschlüssel (*Passwort*) und wenn Sie das Haus für längere Zeit (*z.B. Urlaub*) verlassen kommt zusätzlich zum Hausschlüssel ein [Querriegelschloss](https://de.wikipedia.org/wiki/Querriegelschloss) mit gesondertem Schlüssel (*Zwei-Faktor-Authentisierung*) zum Einsatz.

Wenn Sie den Hausarzt Ihres Vertrauens aufsuchen, erwarten Sie, dass dieser mit aktuellem medizinischem Wissen (*Update*) ausgestattet ist und Ihnen dadurch gut helfen kann.

Die im Kapitel [Sicherheit](#sicherheit) angesprochenen technischen Begriffe (*Update, Passwörter, Zwei-Faktor-Authentisierung, Virenschutzprogramm, Firewall*) sind jetzt hoffentlich leichter für Sie fassbar.

Natürlich sind diese Vergleiche nicht perfekt, gleichwohl helfen sie einem das Thema besser zu verstehen. Eine wesentliche Komponente, der Router (z.B. [Fritz!Box](https://avm.de/produkte/fritzbox/)), fehlt hier allerdings. Der Router entspricht in etwa Ihrem [Sicherungskasten](https://www.baulinks.de/webplugin/2019/i/0058-tuev.jpg). Beide verteilen etwas (Daten bzw. Stom) im Haus.

Basierend auf Ihrer persönlichen Risikobereitschaft können Sie jetzt z.B. bestimmen ob Sie gerne einen stabileren Zaun (*Firewall*) anschaffen möchten damit Ihre Kinder sicherer in Ihrem Garten spielen können.

Machen Sie sich einfach bewusst, **warum** Sie **was**, **wie** verändern möchten.

### Kommunikation mit dem Internet

Die Kommunikation mit dem Internet erfolgt Paketbasiert (*siehe dazu auch [Internet Protokoll](https://de.wikipedia.org/wiki/Internet_Protocol)*). Man tauscht also (kleine) Daten-Pakete mit dem Internet aus. Lassen Sie mich das an einem Beispiel kurz illustrieren.

Ihre Tochter studiert zur Zeit in London und Sie möchten ihr zu Weihnachten ein 1.000 Teile Puzzle schenken. Natürlich versenden Sie dieses Puzzle als Paket. Absender, Adresse, ausreichend Porto und schon kann es los gehen.

Dieses Beispiel stellt sich mit dem Internet ganz anders und doch sehr ähnlich dar. Hier wird jedes der 1.000 Teile einzeln in einen Briefumschlag (*incl. Absender, Adresse und ausreichend Porto*) verpackt und verschickt.

Das Prinzip ist also das Gleiche, die Konsequenzen jedoch erheblich. Auf diese Art und Weise lassen sich beliebige Datengrößen austauschen. Alles, wirklich alles, wird bei der Kommunikation mit dem Internet in kleine Datenpakete (*Briefumschläge mit Absender, Adresse und ausreichend Porto*) verpackt und versendet. Dabei sind für Sie zwei Werte ausschlaggebend:

- [Datendurchsatz](https://de.wikipedia.org/wiki/Datendurchsatz)
- Reaktionszeit (*Verzögerungszeit oder [Antwortzeit](https://de.wikipedia.org/wiki/Antwortzeit)*)

Der Datendurchsatz wird z.B. in mega Bit pro Sekunde (*Mbit/s*) angegeben, also Datenmenge je Zeiteinheit. Oft wird auch noch je Übertragungsrichtung z.B. Download (*hole Daten aus dem Internet*) und Upload (*lade Daten in das Internet*) unterschieden.

Hier einige Beispiele für Datendurchsatz beim Fernsehen über das Internet (*[Streaming](https://de.wikipedia.org/wiki/Streaming_Media), [Videoauflösung](https://de.wikipedia.org/wiki/Videoaufl%C3%B6sung)*)

| Videoqualität | Auflösung          | Datendurchsatz in Mbit/s (*[Farbtiefe](https://de.wikipedia.org/wiki/Farbtiefe_(Computergrafik)) 32 bit*)  |
| ------------- | ------------------ |----------------- |
| UHD 8K        | 7680 x 4320 Pixel  | von 24 bis 121   |
| UHD 4K        | 3840 x 2160 Pixel  | von 6 bis 15     |
| HD1080        | 1920 × 1080 Pixel  | 2                |
| HD720         | 1280 x 720 Pixel   | 1,7              |

Eine der Hauptursachen für die Reaktionszeit im Internet ist die Entfernung, insbesondere die Entfernung zwischen den Client-Geräten, die Anfragen stellen, und den Servern, die auf diese Anfragen reagieren. Wenn eine Website in einem Rechenzentrum in Frankfurt am Main, Deutschland, gehostet wird, erhält sie Anfragen von Nutzern aus Husum, Deutschland (etwa 575 km entfernt) relativ schnell, wahrscheinlich innerhalb von 4 (*2 hin und 2 zurück*) Millisekunden. Anfragen von Nutzern aus New York City, USA (ca. 6.200 km entfernt) brauchen dagegen länger, etwa 42 (*21 hin und 21 zurück*) Millisekunden. Die Zeitangaben sind grobe Näherungswerte besierend auf der [Lichtgeschwindigkeit](https://de.wikipedia.org/wiki/Lichtgeschwindigkeit), also dem theoretischen Maximum - schneller geht es einfach nicht.

Das ist z.B. beim Telefonieren und bei der Videotelefonie ganz entscheidend. Verzögerungen möchten Sie im Gespräch nun wirklich nicht haben.

### Anbindung an das Internet

Internetanbindung kann kabelgebunden (*z.B. Kupferleitung, Lichtwellenleitung*) oder Kabellos (*z.B. [WLAN](https://de.wikipedia.org/wiki/Wireless_Local_Area_Network), [LTE, LTE+ oder 5G](https://de.wikipedia.org/wiki/Long_Term_Evolution)*) erfolgen. Auch hier die Analogie zu unserem Hausbeispiel. Kabelgebungen (*Wasseranschluss*) und Kabellos (*Satellitenschüssel, KW, MW, UKW Radioempfang*). Oft nutzt man zu Hause einen kabelgebundenen Anschluß und sein privates WLAN. Unterwegs wird oft LTE verwendet.

Machen Sie sich bitte bewusst, dass das WLAN außerhalb Ihres zu Hauses von Dritten (*z.B. Kaufhaus, Hotel, Krankenhaus*) betrieben und zur Verfügung gestellt wird. In diesem Zusammenhang ist es ggf. hilfreich das Projekt [WiFi4EU](https://wifi4eu.ec.europa.eu/#/home) zu erwähnen.

Diese Leistung (*Anbindung an das Internet*) lassen sich die Anbieter bezahlen (*siehe Porto in [Kommunikation mit dem Internet](#kommunikation-mit-dem-internet)*). Oft mit einer sogenannten Internet [Flatrate](https://de.wikipedia.org/wiki/Flatrate). Dabei ist es nicht von Bedeutung wie oft bzw. wie viel sie das Internet nutzen oder anders gesagt, Pakete mit dem Internet austauschen. Sondern es wird der Datendurchsatz zugesichert (*oft auch mit Zusätzen wie z.B. bis zu ...*)

Bitte achten Sie darauf, dass Sie die Anschlußparameter sicher verwahren (*Stichwort Passwort oder Haustürschlüssel*) denn Sie haben den Vertrag mit dem Anbieter und bezahlen diese Leistung. Wenn Dritte "unter Ihrem Namen" von dieser Internetanbindung Gebrauch machen, sind Sie dafür i.d.R. haftbar.

## weitere Informationen

- [Bundesamt für Sicherheit in der Informationstechnik (*BSI*)](https://www.bsi.bund.de/DE/Das-BSI/Auftrag/auftrag_node.html)
  - Der [Verbraucherschutz-Newsletter "Sicher • Informiert"](https://www.bsi.bund.de/dok/6722626) richtet sich an alle, die über die wichtigsten Ereignisse rund um die Sicherheit Ihres Computers und im Internet auf dem Laufenden gehalten werden wollen. Der Newsletter erscheint alle vierzehn Tage. Im Falle einer besonders akuten Gefahrensituation informieren wir Sie unmittelbar mit einer Extraausgabe des Newsletters. Alle Informationen werden leicht verständlich erklärt.
- [Mike Kuketz](https://www.kuketz-blog.de/ueber-mich/) (*Neben seiner freiberuflichen Tätigkeit ist Mike zu 50 % bei der Dienststelle des [Landesbeauftragten für den Datenschutz und die Informationsfreiheit Baden-Württemberg](https://www.baden-wuerttemberg.datenschutz.de/) (LfDI BW) angestellt.*)
  - [5 praxisnahe Tipps für mehr IT-Sicherheit: Echt jetzt!](https://www.kuketz-blog.de/5-praxisnahe-tipps-fuer-mehr-it-sicherheit-echt-jetzt/)
  - [Datenhändler: Wir sind gläsern – Datensammler Teil1](https://www.kuketz-blog.de/datenhaendler-wir-sind-glaesern-datensammler-teil1/)
  - [Digitale Selbstbestimmung – Eine Einordnung](https://www.kuketz-blog.de/kommentar-digitale-selbstbestimmung-eine-einordnung/)
  - [Ungewöhnliche IT-Sicherheits- und Datenschutztipps](https://www.kuketz-blog.de/ungewoehnliche-it-sicherheits-und-datenschutztipps-teil1/)
  - [31 Tipps für mehr Sicherheit und Datenschutz im Internet](https://www.kuketz-blog.de/31-tipps-fuer-mehr-sicherheit-und-datenschutz-im-internet/)
- [Professor Harald Lesch](https://de.wikipedia.org/wiki/Harald_Lesch) (*Deutscher Astrophysiker, Naturphilosoph, Wissenschaftsjournalist, Fernsehmoderator und Hörbuchsprecher. Er ist Professor für Physik an der Ludwig-Maximilians-Universität München und Lehrbeauftragter für Naturphilosophie an der Hochschule für Philosophie München.*)
  - [Übrigens ... zum Umgang mit Daten](https://ngp.zdf.de/miniplayer/embed/?mediaID=%2Fzdf%2Fwissen%2Fleschs-kosmos%2Fuebrigens-zum-umgang-mit-daten-102)
  - [Angriff aus dem Cyberspace – wie verwundbar sind wir?](https://www.zdf.de/wissen/leschs-kosmos/angriff-aus-dem-cyberspace-wie-verwundbar-sind-wir-100.html)
- [Überprüfen Sie, ob Ihre E-Mail-Adresse oder Ihr Telefon von einer Datenpanne betroffen ist](https://haveibeenpwned.com/)
- [Datenschutz-Audit-Plattform für Android-Anwendungen](https://reports.exodus-privacy.eu.org/de/)
- [„Oscars für Datenkraken“ werden jedes Jahr an die größten Datensünder vergeben.](https://bigbrotherawards.de/) z.B. [2021 im Bereich Gesundheit an Doctolib aus Berlin](https://bigbrotherawards.de/2021/gesundheit-doctolib) oder [2023 Deutsche Post DHL Group im Bereich Verbraucherschutz](https://bigbrotherawards.de/2023/deutsche-post-dhl)


### Konkrete Vertiefung einiger Risikobereiche

- Die Bösen bleiben draußen (*[Meine zentrale Firewall](https://private.internet.sicherheit.mielimonka.demeine.zentrale.firewall)*)
- Sicher ist sicher (*[Sichere Verwaltung meiner Passwörter](https://github.com/hmielimo/private.internet.sicherheit/tree/main/sichere.verwaltung.meiner.passwoerter)*)
- Für den Fall der Fälle (*[Datensicherung und Wiederherstellung](https://github.com/hmielimo/private.internet.sicherheit/tree/main/sicherung.und.wiederherstellung)*)
- [»Ich habe doch nichts zu verbergen!«](https://www.kuketz-blog.de/empfehlungsecke/#verbergen)
- [Made to Measure bzw. Maßanfertigung](https://madetomeasure.online/de) (Made to Measure ist ein Experiment: Kann man eine Person allein anhand ihrer Online-Spuren nachbilden? Von jemandem, den man nicht kennt, einen Doppelgänger/ eine Doppelgängerin erschaffen? Das Leben einer Person bis ins Detail nachbauen, nachspielen und verfilmen, ihre Persönlichkeit kopieren?)
- [Sicherheit und Privatsphäre des Saugroboters // Verhindern Sie, dass Ihr Roboter Ihre Daten absaugt - englischer Vortrag auf dem  Chaos Communication Camp 2023](https://media.ccc.de/v/camp2023-57158-vacuum_robot_security_and_privacy#t=1)
- [Hirne hacken](https://media.ccc.de/v/36c3-11175-hirne_hacken#t=1) von [Linus Neumann](https://de.wikipedia.org/wiki/Linus_Neumann)


### Videos (*Komplexität einfach erklärt*)
- [Wie funktioniert das Internet?](https://www.youtube.com/watch?v=fpqhjEtznVk)
- [Der Internet-Check ](https://www.youtube.com/watch?v=i7cYePelQH4)
- [Wie kommen die Daten in die Cloud?](https://www.youtube.com/watch?v=eJE_32_5SfE)
- [Wie funktioniert eine Firewall?](https://www.youtube.com/watch?v=qDr39p6pxVM)
- [Hub vs. Switch vs. Router](https://www.youtube.com/watch?v=zFfattg5gd8)
- [5 Anzeichen, dass du GEHACKT wurdest](https://www.youtube.com/watch?v=HzOH2Jn5F78)
