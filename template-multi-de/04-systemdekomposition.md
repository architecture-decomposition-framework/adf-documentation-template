# 4. Systemdekomposition

In den Unterabschnitten dieses Kapitels beschreiben wir, wie die grundlegende Lösungsstrategie für das System ist, welche wichtigen Entscheidungen für das System getroffen wurden, wie das System nach Funktionalität, Daten und Deployment gegliedert ist und warum die Gliederung entsprechend gewählt wurde.

## 4.1. Lösungsansatz und zentrale Architekturentscheidungen

- Was ist der grundsätzliche Lösungsansatz für das System? Und welche grundlegenden Architekturentscheidungen wurden getroffen? Z.B. lokale Desktop-Anwendung versus verteiltes Client-Server-System, monolithisches Deployment versus (Micro-)Service-Deployment
- Welche Architektur-Treiber wurden bei diesem Ansatz besonders priorisiert?
- Bei welchen Treibern wurden Kompromisse eingegangen? Welche Kompromisse?

## 4.2. Systemstruktur

- Anhand welcher Kriterien ist das System auf oberster Ebene unterteilt? Handelt es sich bei diese Unterteilung eher um eine technische Unterteilung (verschiedene Schichten) oder um eine fachliche Unterteilung (nach Domänen/Geschäftsbereichen geclustert)?
- Wie hängen die einzelnen Systemteile miteinander zusammen?
- Welche Abhängigkeiten und Synchronisierungsbedarfe gibt es?
- Wie sieht die funktionale Dekomposition des Systemteile zur Laufzeit im Sinne von Komponenten aus?
- Welche Aufgaben haben die einzelnen Komponenten?
- Wie interagieren diese miteinander?
- Welche Daten werden zwischen den Komponenten ausgetauscht?

Die Autoren dieser Vorlage empfehlen, für die Zerlegung auf oberster Ebene und pro genauere Beschreibung eines System-Einzelteils Unterkapitel anzulegen.

## 4.3. Datenmodell

- Wie sieht das grundlegende Datenmodell für das System (zur Laufzeit) aus?
- Welche Entitäten gibt es? Wie stehen diese in Bezug zu dem in [Kapitel 2.2](02-systemkontext-und-domaene.md#22-domänenmodell) beschriebenen Domänenmodell?
- Welche Beziehungen gibt es zwischen den Entitäten?
- Welche Entitäten werden global im gesamten System verwendet? Welche sind speziell in einzelnen Systemteilen?

## 4.4. Code-Organisation (Abbildung Laufzeit auf Entwicklungszeit)

- Wie werden Komponenten (Laufzeit) auf Module (Entwicklungszeit) abgebildet (Runtime-to-devtime mapping)?
- Durch welche Code-Strukturen (z.B. Java-Klassen) werden die Module realisiert?
- Wie werden die Datenstrukturen in Code realisiert? Welche Datentypen gibt es? Gibt es Vererbung oder Komposition unter den Datentypen?
- Wie ist der Quellcode in Paketen organisiert?
- Welche Versionskontrolle wird eingesetzt? Welche Repositories gibt es für welchen Quellcode und welche Konfiguration?

## 4.5. Build-Prozess und -Struktur

- Welche Deployment-Artefakte gibt es?
- Wie werden Module in Deployment-Artefakte verpackt?
- Wie werden die Deployment-Artefakte erstellt?
- Welche Stages gibt es? Was passiert in den einzelnen Stages?

## 4.6. Deployment und Betrieb

- Wie sieht die Ausführungsumgebung des Systems aus?
- Wie wird das System zwischen Client und Backend aufgeteilt? Welche unterschiedlichen Nodes oder Ausführungsumgebungen gibt es für Client und Backend?
- Wie werden die Deployment-Artefakte auf die Ausführungsumgebung(en) gebracht?
- Welche Werkzeuge werden dafür verwendet?
- Wird das System bei einem Cloud-Provider betrieben?
- Wird eine Platform as a Service verwendet?

## 4.7. Technologien

- Was sind die wichtigsten verwendeten Technologien für die Ausführung und Entwicklung des Systems?
- Welche Entscheidungen haben dazu geführt, das sie verwendet werden?
- Welche Frameworks und wiederverwendbare Bibliotheken werden eingesetzt? Warum?

---

[← Vorheriges Kapitel: Architekturtreiber](03-architekturtreiber.md) | [↑ Inhaltsverzeichnis](inhalt.md) | [Nächstes Kapitel: Architekturkonzepte →](05-architekturkonzepte.md)
