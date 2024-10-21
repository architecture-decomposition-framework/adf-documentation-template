# Architekturdokumentationsvorlage <!-- omit in toc -->

Dies ist die **Version 2.0.0** der ADF-Dokumentationsvorlage. Sie wurde von Dominik Rost und Johannes Schneider erstellt. Die Vorlage wird unter der Lizenz "[Creative Commons: Namensnennung - Weitergabe unter gleichen Bedingungen 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/deed.de)" zur Verfügung gestellt.

In jedem Abschnitt dieser Vorlage stehen Hinweise, was man dort üblicherweise beschreibt. Diese Hinweise entfernen wir, nachdem wir die Abschnitte ausgefüllt haben - oder wir kommentieren sie mittels HTML-Kommentaren `<!--` (Kommentar-Anfang) und `-->` (Kommentar-Ende) aus.

<!-- Das hier ist ein Beispiel-Kommentar, der in der Vorschau / auf dem Git-Server nicht angezeigt wird. -->

## Allgemeine Hinweise zur Benutzung der Vorlage <!-- omit in toc -->

Dieses Dokument ist in [Markdown](https://de.wikipedia.org/wiki/Markdown) geschrieben, so dass wir es ganz einfach mit Texteditoren oder Entwicklungsumgebungen bearbeiten und in eine Versionskontrolle (z.B. Git) einpflegen können. Wenn wir ein Textverarbeitungsprogramm bevorzugen, können wir die HTML-Ansicht unter Beibehaltung der Überschriftebenen per Copy&Paste dorthin importieren.

Architekturdokumentation verwendet viele **Diagramme und Abbildungen**. Diese können wir in Markdown als Bilder einbinden. Viele Informationen zum Sichtenframework ADF und zur technischen Umsetzung mit dieser Vorlage (Einbindung über Diagrams.net mit passenden ADF-Elementen) finden wir auf der [Übersichtsseite zum Architecture Decomposition Framework](https://github.com/architecture-decomposition-framework/welcome-to-adf). Dort gibt es auch eine Anleitung zum [Architektur-Design mit dem ADF (auf Englisch)](https://github.com/architecture-decomposition-framework/welcome-to-adf/blob/main/adf-design/Design.md), der in den ADF-Architekturentwurfsprozess einführt und erfahrenen und weniger erfahrenen Softwarearchitekt:innen beim **Architektur-Design** helfen kann.

Zum **Umfang der Dokumentation**: Es gibt kein "one size fits it all" für Architekturdokumentationen. Deshalb können wir weitere Abschnitte hinzufügen, die uns fehlen, oder Abschnitte löschen, die für unser System nicht relevant sind. Auch eine andere Reihenfolge der Abschnitte ist möglich. Aus praktischen Aspekten ist es jedoch ratsam, die grundlegende Struktur der Architekturdokumentation einheitlich zu wählen, da man sich dann bei neuen Projekten, welche auch dieses Template benutzen, direkt zurechtfindet. Wir kennen dieses Prinzip einer einheitlichen Gliederung von Beipackzetteln bei Medikamenten oder von Spielanleitungen bei Gesellschaftsspielen.

Unser **erster Schritt** beim Anlegen und Ausfüllen einer Architekturdokumentation sollte immer sein, dass wir uns die **Zielgruppe der Dokumentation** überlegen. Als Beispiel: Eine Architekturdokumentation, welche dem Entwicklungsteam den beabsichtigten, Client-seitigen Caching-Mechanismus erläutert, unterscheidet sich in ihrer technischen Tiefe von einer Dokumentation, die dem Management erläutert, warum es aus Performance-Gründen wichtig ist, eine kostenpflichtige kommerzielle Technologie zuzukaufen. Die Zielgruppe kann man unter Punkt "1.5 Ziele des Dokuments" eintragen.

**Anschließend** unterscheidet sich das Ausfüllen der Vorlage dadurch, ob wir ein schon **bestehendes System dokumentieren** möchten **oder** die Dokumentation während des Architekturdesigns erstellen (vielleicht auch **begleitend zur Implementierung** im Rahmen agiler Vorgehensweise). Ersterer Fall tritt oft ein, wenn wir nachträglich eine Dokumentation als Deliverable abgeben müssen (aufgrund vertraglicher Abmachungen) oder wir feststellen, dass das System zu komplex geworden ist, um es allein aus dem Wissen der Entwickler:innen und dem Source-Code als Ganzes noch überblicken zu können. Wir arbeiten dann die Vorlage von vorne bis hinten durch. Im Optimalfall können wir eine (nahezu) vollständige Liste von Anforderungen und Architektur-Treiber in die entsprechenden Kapitel eintragen. Das Aufschreiben der Architekturkonzepte benötigt meist mehrere Iterationen, da wir diese schrittweise rekonstruieren müssen.

Ein nachträgliches Erstellen einer Dokumentation bringt nicht selten widersprüchliche oder inkonsistente Architekturentscheidungen zu Tage. **Architekturarbeit** sollten wir idealerweise **kontinuierlich** leisten. Wir empfehlen daher, **Architekturdokumentation** als ein **lebendes Artefakt** (_living artifact_) zu sehen und schrittweise weiterzuentwickeln. In diesem Fall

- füllen wir bei Projektbeginn die ersten drei Kapitel aus (ggf. nur stichpunkthaft),
- ergänzen Anforderungen und weitere Architekturtreiber soweit, wie wir sie als Basis für die Systemzerlegung und die Architekturkonzepte benötigen,
- dokumentieren technische Schulden und weitere Pläne in den Schlusskapiteln, wenn immer sie bekannt werden, und
- erweitern das Glossar sukzessive um Begriffe, die der Zielgruppe der Dokumentation nicht bekannt sein.

Durch eine Versionierung der Dokumentation (z.B. in einem Git-Repository) machen wir Änderungen nachvollziehbar.
