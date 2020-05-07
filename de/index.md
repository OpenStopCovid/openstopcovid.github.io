---
layout: page
title: OpenStopCovid
subtitle: Dezentralisierte Lösung für die Ermittlung von Kontaktpersonen<br>100% frei und zivilgesellschaftlich
ressources: Ressourcen
presskit: Pressemappe
appmobile: Mobile Anwendung
uidoctor: Medizinische Anwendung
uidoctordev: Medizinische Anwendung (Code)
appserv: Anwendungs-Server
specs: Spezifikationen
doc: Dokumentation
lang: de
---

## Was ist die Ermittlung von Kontaktpersonen ##

Die Ermittlung von Kontaktpersonen besteht für einen Benutzer darin, eine spezifische Smartphone-Anwendung zu installieren, die mit Hilfe der Bluetooth-Technologie andere Geräte in der Nähe lokalisiert. In der Praxis speichert das Telefon Pseudonyme im Speicher, die von anderen Geräten in seiner Umgebung ausgestrahlt werden. Diese Pseudonyme sind meist verschlüsselt und können nur von Smartphones verstanden werden, die mit der gleichen Anwendung ausgestattet sind.

Diese Technologie hat das Potenzial ([aber nicht die Gewissheit] (https://github.com/DP-3T/documents/issues/224)), die Ausbreitung der Covid-19-Krankheit in der Bevölkerung zu begrenzen. So könnte eine dedizierte mobile Anwendung, die nach den Regeln der Kunst entwickelt wurde, es uns ermöglichen, zu einem scheinbar normalen Leben zurückzukehren, ohne die Ergebnisse der zu Ende gehenden Abriegelung zu untergraben. Lassen Sie uns drei Vorteile erwähnen, die von einer Tracking-Anwendung zu erwarten sind:
* Eine Person kann schnell benachrichtigt werden, wenn sie zu lange in der Nähe einer infizierten Person gestanden hat.
* Eine Person kann automatisch von den Gesundheitsbehörden über die zu ergreifenden Maßnahmen instruiert werden.
* Eine Person kann auf freiwilliger Basis Epidemiologen anonyme Forschungsinformationen über die Ausbreitung der Krankheit auf dem Territorium zur Verfügung stellen.

Die Ermittlung von Kontaktpersonen allein kann jedoch keine Lösung für die Pandemie sein. Sie kann nur Teil eines umfassenderen Systems sein.

## Warum eine dezentralisierte Lösung

Wenn ein Benutzer positiv diagnostiziert wird, ist es möglich, das Risiko für alle Personen zu berechnen, die kürzlich von diesem Benutzer gekreuzt wurden. Um diese Operation durchzuführen, ist es notwendig, den Gesundheitszustand des Opfers, das dem Auftreten von Symptomen entsprechende Datum und alle Pseudonyme, die sein Smartphone in den vorangegangenen Tagen aufgezeichnet hat, zu erfassen, um sich gegenüber anderen Benutzern zu identifizieren. Gleichzeitig ist es auch notwendig, die Pseudonyme zu sammeln, die das Smartphone während der Inkubationsphase der Krankheit von anderen Benutzern erhalten hat. Durch die Kombination dieser Daten kann eine Tracking-Anwendung den Grad des Expositionsrisikos jeder Person bestimmen.

Das Problem besteht hier weniger darin, wie diese Berechnung durchgeführt wird, als vielmehr darin, wo sie stattfindet und welche Daten übertragen werden. Auf der Grundlage des DP-3T-Protokolls, das von der École polytechnique fédérale de Lausanne ([EPFL](https://www.epfl.ch/en/)) und ihren Partnern entwickelt wurde, hat sich OpenStopCovid für eine dezentrale Antwort auf dieses Problem entschieden. Dies bedeutet, dass die Berechnung im Smartphone des Benutzers erfolgt und dass die Kontakte es nicht verlassen. Umgekehrt besteht eine zentralisierte Lösung notwendigerweise darin, pseudonymisierte Kontakte an einen entfernten Server zu senden, eine für uns inakzeptable Voraussetzung für die Verarbeitung.

Wir sind der Meinung, dass es zu riskant ist, solche Daten in einem zentralen Server zu sammeln, so sicher dieser auch sein mag. In Anbetracht der Entwicklungen in der Informationstechnologie sind solche anonymen Daten heute vielleicht morgen nicht mehr anonym. Darüber hinaus besteht die Gefahr, diese Informationen zu zentralisieren, aufzuzeichnen und mit anderen Informationen wie z.B. den Systemprotokollen von Telekommunikationsbetreibern zu vergleichen. Der dezentralisierte Ansatz birgt auch Risiken, die jedoch auf der Ebene des Einzelnen lokalisiert und damit minimiert bleiben. Diese Risiken sind vergleichbar mit denen, die durch die Installation von Malware oder Spionagekameras verursacht werden.

## Warum eine 100% kostenlose Lösung

Technologien zur Kontaktverfolgung sind aus epidemiologischer Sicht interessant. Gleichzeitig stellen sie aber auch eine Gefahr für die individuellen Freiheiten dar. Dieses Risiko kann auf einfache Art und Weise entstehen, indem eine allgemeine Überwachung der gesamten Bevölkerung durchgeführt wird. Oder auf heimtückische Weise, mittel- und langfristig, indem man die Menschen ermutigt, sich mit einer regelmässigen Verfolgung ihrer Handlungen zu begnügen. Um diese Risiken zu verringern, ist es notwendig, die Kontrolle der Bürger über den "Quellcode" (Herstellungsplan) der Anwendungen zu behalten.

Eine Strategie zur Gewährleistung dieser Kontrolle besteht darin, den Quellcode der Anwendung auf spezialisierten Plattformen zu veröffentlichen. Dieser als "Open Source" bezeichnete Quellcode wird dann jedem zugänglich sein, der ihn lesen und testen möchte, mit dem Ziel, zu überprüfen, dass keine Bedrohungen, Schwachstellen oder betrügerisches Verhalten die Integrität der darin zirkulierenden Daten verändern.

Der andere Vorteil von Open-Source-Code besteht darin, dass er die Anwendung für Beiträge von Entwicklern außerhalb des Projekts und nicht nur von einem kleinen Team bereithält. Bereits heute helfen diese Entwickler OpenStopCovid dabei, die Sicherheit, Leistung, aber auch die Benutzerfreundlichkeit und Ergonomie der Anwendung und der Komponenten, auf die sie angewiesen ist, zu verbessern. Diese Mitwirkenden bilden in gewisser Weise ein unbegrenztes und internationales Entwicklungsteam.

Umgekehrt ist der geschlossene Quellcode frei von jeder schwerfälligen externen Kontrolle und wirft daher im weiteren Sinne Legitimations- und Sicherheitsprobleme für die Gesellschaft als Ganzes auf.

## Verfügbare Komponenten

Die Hauptkomponenten des Projekts sind wie folgt:

* Eine Android-Anwendung
* Eine iPhone-Anwendung
* Eine Schnittstelle für Angehörige der Gesundheitsberufe (vertrauenswürdige Drittpartei)
* Einige serverseitige Bausteine zur Sicherung des Geräts

Die von uns gewählte Architektur basiert direkt auf dem DP-3T-Protokoll und verwendet mehrere Referenzkomponenten. Unsere Implementierung wird durch das folgende Diagramm dargestellt:

![Architektur]({{site.url}}/img/architecture.png)

## Wie Sie beitragen können

Sie können unsere Arbeit auf [GitHub](https://github.com/OpenStopCovid) verfolgen.

## Kontakt

contact@openstopcovid.fr
