# Architekturdokumentationsvorlage <!-- omit in toc -->

Dies ist die Version 1.0.0 der ADF-Dokumentationsvorlage. Sie wurde von Dominik Rost und Johannes Schneider erstellt. Die Vorlage wird unter der Lizenz "[Creative Commons: Namensnennung - Weitergabe unter gleichen Bedingungen 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/deed.de)" zur Verfügung gestellt.

## Inhalt <!-- omit in toc -->

- [1. Einleitung](#1-einleitung)
  - [1.1. Geschäftskontext](#11-geschäftskontext)
  - [1.2. Systemübersicht](#12-systemübersicht)
  - [1.3. Randbedingungen (Constraints)](#13-randbedingungen-constraints)
  - [1.4. Stakeholder](#14-stakeholder)
  - [1.5. Ziele des Dokuments](#15-ziele-des-dokuments)
- [2. Systemkontext und Domäne](#2-systemkontext-und-domäne)
  - [2.1. System-Kontext-Abgrenzung](#21-system-kontext-abgrenzung)
  - [2.2. Domänenmodell](#22-domänenmodell)
- [3. Architekturtreiber (Funktion und Qualität)](#3-architekturtreiber-funktion-und-qualität)
  - [3.1. Wesentliche funktionale Anforderungen](#31-wesentliche-funktionale-anforderungen)
  - [3.2. Qualitätsattribute](#32-qualitätsattribute)
- [4. Systemdekomposition](#4-systemdekomposition)
  - [4.1. Lösungsansatz und zentrale Architekturentscheidungen](#41-lösungsansatz-und-zentrale-architekturentscheidungen)
  - [4.2. Systemdomänen](#42-systemdomänen)
  - [4.3. Systemstruktur](#43-systemstruktur)
  - [4.4. Datenmodell](#44-datenmodell)
  - [4.5. Code-Organisation (Abbildung Laufzeit auf Entwicklungszeit)](#45-code-organisation-abbildung-laufzeit-auf-entwicklungszeit)
  - [4.6. Build-Prozess und -Struktur](#46-build-prozess-und--struktur)
  - [4.7. Deployment und Betrieb](#47-deployment-und-betrieb)
  - [4.8. Technologien](#48-technologien)
- [5. Architekturkonzepte](#5-architekturkonzepte)
  - [5.1. Konzept #1](#51-konzept-1)
    - [5.1.1. Architektur-Treiber](#511-architektur-treiber)
    - [5.1.2. Lösungsidee](#512-lösungsidee)
    - [5.1.3. Design-Entscheidungen](#513-design-entscheidungen)
    - [5.1.4. Verworfene Alternativen](#514-verworfene-alternativen)
  - [5.2. Konzept #2](#52-konzept-2)
    - [5.2.1. Architektur-Treiber](#521-architektur-treiber)
    - [5.2.2. Lösungsidee](#522-lösungsidee)
    - [5.2.3. Design-Entscheidungen](#523-design-entscheidungen)
    - [5.2.4. Verworfene Alternativen](#524-verworfene-alternativen)
- [6. Risiken und technische Schulden](#6-risiken-und-technische-schulden)
- [7. Ausblick und Pläne für die Zukunft](#7-ausblick-und-pläne-für-die-zukunft)
- [8. Glossar](#8-glossar)

## 1. Einleitung

In der Einleitung schaffen wir ein grundlegendes Verständnis über das System für den Leser. Wir beschreiben den Geschäftskontext mit dem System zugrunde liegenden Geschäftszielen, geben eine Übersicht auf oberster Ebene über das System, nennen zu berücksichtigende Randbedingungen und relevante Stakeholder. Darüber hinaus erläutern wir die Ziele dieses Dokuments.

### 1.1. Geschäftskontext

Jedes System ist in einen geschäftlichen Kontext eingebettet. Es ist wichtig diesen Kontext zu kennen, um ein vollständiges Bild über das System zu erhalten und Entscheidungen verstehen zu können.

Zu beantwortende Fragen:

- Was sind Motivation und Kerntreiber für die Entwicklung des Systems?
- Was sind besondere Herausforderungen?
- Welche Geschäftsziele sollen mit dem System erreicht oder unterstützt werden?
- In welchen geschäftlichen oder Projekt-Kontext ist das System eingebettet?
- Welche Aufgabenstellung ergibt sich dadurch für das System?

### 1.2. Systemübersicht

Wir beschreiben hier Merkmale, die man auch auf einem (fiktiven) Produktkarton für diese Software aufdrucken würde:

- Was ist die Kern-Idee hinter diesem System/ dieser Software?
- Was sind die wichtigsten Funktionalitäten des Systems?
- Was sind die wirklich wichtigen Qualitätseigenschaften des Systems?
- Was macht das System brauchbar?

### 1.3. Randbedingungen (Constraints)

- Was sind wichtige Randbedingungen und Vorgaben, die nicht verändert, aber bei der Entwicklung berücksichtigt werden müssen? Zum Beispiel:
  - Randbedingungen aus der Domäne ("Um als Medizinprodukt zu gelten, muss das System X, Y, Z erfüllen")
  - Organisatorische Randbedingungen wie Prozesse, Teamstruktur/-größe, Sicherheitsrichtlinien, Open- oder Closed-Source-Strategien
  - Technische Randbedingungen ("Das System muss die vorhandene Oracle-Datenbank benutzen")
  - Rechtliche Randbedingungen ("Das System muss DSGVO-konform sein")
  - Kosten und Zeit ("Das System muss bis zum 2.2.2022 mit einem Budget von 222.222 € durchgeführt werden")
- Welche Auswirkungen auf Entwicklung, Qualitätssicherung und Betrieb kann man aus den Randbedingungen direkt ableiten?
- Gelten die Einschränkungen für das System, eine Produktfamilie, oder die ganze Firma?

Hinweis: Wir sollten die Randbedingungen immer wieder hinterfragen, denn

- sie sind oft nicht so fest, wie sie scheinen,
- sie schränken den Lösungsraum ein und
- sie können veraltet sein, wenn das Projekt schließlich beginnt.

### 1.4. Stakeholder

Ein Stakeholder ist eine Person oder Organisation, die (direkt oder indirekt) Einfluss auf die Anforderungen eines Systems hat oder die von dem System betroffen ist.

- Was sind die wichtigsten Stakeholder des Systems?
  - Interne und externe Stakeholder
  - Direkte Stakeholder wie: Nutzer, Betrieb, Entwickler, Tester, Support-Team, ...
  - Indirekte Stakeholder wie: Manager, Marketing, ...
- Was sind die jeweiligen Tätigkeiten und Verantwortlichkeiten der jeweiligen Stakeholder?
- Was sind ihre jeweiligen Anliegen? Das heißt, was ist ihnen im System wichtig und was ist ihre jeweilige Erwartungshaltung?

### 1.5. Ziele des Dokuments

- Was sind die Ziele des Dokuments?
- Für welche Stakeholder enthält das Dokument relevante Informationen und wo sind diese jeweils zu finden?
- Wie ist der Status des Systems und dieses Dokuments?
  - Beispiel: Diese Dokumentation ist eine Entwurf und beschreibt ein System, was sich noch in Planung befindet
  - Oder: Diese Dokumentation ist fertiggestellt und beschreibt die System-Version 2.3, welche seit 15.7.2020 in Betrieb ist.

## 2. Systemkontext und Domäne

Wir beschreiben in diesem Kapitel, in welchem Kontext das System eingesetzt wird.

### 2.1. System-Kontext-Abgrenzung

- Wie ist das System in seinen Kontext eingebettet?
- Von welchen Rollen wird das System aus welchem Grund verwendet?
- Welche Nutzerschnittstellen bietet das System?
- Mit welchen externen Systemen interagiert das System?
- (Wie ist das System in seine Systemlandschaft integriert?)
- Auf welche Weise interagiert das System mit externen Systemen und welche Daten werden ausgetauscht?

### 2.2. Domänenmodell

- Welche Entitäten (Kernelemente aus der geschäftlichen Domäne) gibt es, die im System eine Bedeutung haben und davon verarbeitet werden müssen?
- Wie ist die jeweilige Bedeutung der unterschiedlichen Entitäten?
- Wie hängen die Entitäten miteinander zusammen?
- (Lassen sich Unterdomänen bilden, in denen die Entitäten jeweils eine unterschiedliche Bedeutung haben?)

## 3. Architekturtreiber (Funktion und Qualität)

In den folgenden Kapiteln wird ein Überblick über die wichtigsten Anforderungen für das System gegeben, welche die Ausgestaltung der Architektur beeinflussen. Diese Anforderungen, genannt Architekturtreiber, umfassen  funktionale Anforderungen und Qualitätsanforderungen (in diesem Kapitel beschrieben) sowie Geschäftsziele und Randbedingungen (bereits in Kapitel 1 beschrieben).

### 3.1. Wesentliche funktionale Anforderungen

- Was sind die wichtigsten funktionalen Anforderungen an das System?
- Was muss das System können?
- Ohne welche Funktionen wäre das System wertlos?

### 3.2. Qualitätsattribute

- Was sind die Qualitätsanforderungen an das System, die einen treibenden Einfluss auf die Gestaltung der Architektur haben?
- Über welche Szenarios kann man überprüfen, ob das System die Qualitätsanforderungen erfüllt?

#### 3.2.1. Szenario-Name (Szenario-ID) <!-- omit in toc -->

- Priorität: Hoch (Hoch, Mittel, Niedrig)
- Status: Offen (Offen, Bereit, Umgesetzt). _Eventuell sind weitere Möglichkeiten sinnvoll. Die Menge der Zustände sollte am Anfang des Projekts definiert werden._
- Umgebung: _Kontext und/oder Ausgangssituation, die auf dieses Szenario zutrifft_
  - _ggf. Quantifizierung, Messbare Effekte, die die Umgebung betreffen_
- Stimulus: _Das Ereignis, der Auslöser oder die Bedingung, die sich in diesem Szenario ergeben_
  - _ggf. Quantifizierung, also messbare Effekte, die den Stimulus (Auslöser) betreffen_
- Antwort: _Die erwartete Reaktion des Systems auf das Szenario-Ereignis (Black-Box-Ansicht, die keine Einschränkungen für das Design vorsieht)_
  - _ggf. Quantifizierung, also messbare Effekte, die auf die Reaktion treffen und/oder messbare Indikatoren, dass das Szenario durch die Architektur umgesetzt wurde_

Als Tabelle:

| Kategorisierung  |                            |                     |
| ---------------- | -------------------------- | ------------------- |
| Szenario-Name    | _Name_                     |                     |
| Scenario ID      | _ID_                       |                     |
| Priorität        | _Hoch, Mittel, Niedrig_    |                     |
| Status           | _Offen, Bereit, Umgesetzt_ |                     |
| **Beschreibung** |                            | **Quantifizierung** |
| Umgebung         | _Beschreibung_             | _Beschreibung_      |
| Stimulus         | _Beschreibung_             | _Beschreibung_      |
| Antwort          | _Beschreibung_             | _Beschreibung_      |

## 4. Systemdekomposition

In den Unterabschnitten dieses Kapitels beschreiben wir, wie die grundlegende Lösungsstrategie für das System ist, welche wichtigen Entscheidungen für das System getroffen wurden, wie das System nach Funktionalität, Daten und Deployment gegliedert ist und warum die Gliederung entsprechend gewählt wurde.

### 4.1. Lösungsansatz und zentrale Architekturentscheidungen

- Was ist der grundsätzliche Lösungsansatz für das System?
- Welche grundlegenden Architekturentscheidungen wurden getroffen?

### 4.2. Systemdomänen

- Wie lässt sich das System nach unterschiedlichen Domänen zergliedern (im Sinne von Domain-Driven Design)
- Wie hängen die Domänen miteinander zusammen?
- Welche Abhängigkeiten und Synchronisierungsbedarfe gibt es?

### 4.3. Systemstruktur

- Wie sieht die funktionale Dekomposition des Systems zur Laufzeit im Sinne von Komponenten aus?
- Welche Aufgaben haben die einzelnen Komponenten?
- Wie interagieren diese miteinander?
- Welche Daten werden zwischen den Komponenten ausgetauscht?

### 4.4. Datenmodell

- Wie sieht das grundlegende Datenmodell für das System aus?
- Was sind die fachlichen Entitäten und welche Beziehungen existieren zwischen diesen?

### 4.5. Code-Organisation (Abbildung Laufzeit auf Entwicklungszeit)

- Wie werden Komponenten (Laufzeit) auf Module (Entwicklungszeit) abgebildet (Runtime-to-devtime mapping)?
- Durch welche Code-Strukturen (z.B. Java-Klassen) werden die Module realisiert?
- Wie ist der Quellcode in Paketen organisiert?
- Welche Versionskontrolle wird eingesetzt? Welche Repositories gibt es für welchen Quellcode und welche Konfiguration?

### 4.6. Build-Prozess und -Struktur

- Welche Deployment-Artefakte gibt es?
- Wie werden Module in Deployment-Artefakte verpackt?
- Wie werden die Deployment-Artefakte erstellt?
- Welche Stages gibt es? Was passiert in den einzelnen Stages?

### 4.7. Deployment und Betrieb

- Wie sieht die Ausführungsumgebung des Systems aus?
- Wie wird das System zwischen Client und Backend aufgeteilt? Welche unterschiedlichen Nodes oder Ausführungsumgebungen gibt es für Client und Backend?
- Wie werden die Deployment-Artefakte auf die Ausführungsumgebung(en) gebracht?
- Welche Werkzeuge werden dafür verwendet?
- Wird das System bei einem Cloud-Provider betrieben?
- Wird eine Platform as a Service verwendet?

### 4.8. Technologien

- Was sind die wichtigsten verwendeten Technologien für die Ausführung und Entwicklung des Systems?
- Welche Entscheidungen haben dazu geführt, das sie verwendet werden?
- Welche Frameworks und wiederverwendbare Bibliotheken werden eingesetzt? Warum?

## 5. Architekturkonzepte

In diesem Kapitel beschreiben wir, wie Sie die von den Architekturtreibern geforderten Funktions- und Qualitätsziele erreichen.

### 5.1. Konzept #1

Wir benutzten als Überschrift den konkreten Namen des Lösungskonzepts, z.B. "Mandantenkonzept", "Skalierbarkeit", "Logging", "Testbarkeit", "Internationalisierung", "Monitoring", "Konfiguration", "Offline-Fähigkeit und Datensynchronisation".

#### 5.1.1. Architektur-Treiber

- Welche Treiber werden von diesem Konzept angesprochen/umgesetzt?

Es genügt, wenn wir Referenzen auf die Treiber einfügen (z.B. die Scenario-ID).

#### 5.1.2. Lösungsidee

- Welche Idee verfolgen wir mit diesem Konzept?

Wir illustrieren die Idee mit Architektur-Sichten und entsprechendem Begleittext.

#### 5.1.3. Design-Entscheidungen

- Welche grundsätzlichen Design-Entscheidungen haben wir für dieses Lösungskonzept getroffen? Z.B. Architekturstil(e), Technologien, Frameworks, Strategien

#### 5.1.4. Verworfene Alternativen

- Welche alternative(n) Lösung(en) haben wir diskutiert und verworfen?
- Warum wurden sie verworfen?

### 5.2. Konzept #2

Nach demselben Schema wie bei Konzept #1 beschreiben wir hier weitere Lösungskonzepte.

#### 5.2.1. Architektur-Treiber

#### 5.2.2. Lösungsidee

#### 5.2.3. Design-Entscheidungen

#### 5.2.4. Verworfene Alternativen

## 6. Risiken und technische Schulden

- Welche Design-Entscheidungen sind am riskantesten, etwa weil sie auf Annahmen basieren, die wir nicht genau überprüft haben oder überprüfen konnten? Oder weil sie unbekannte Lösungskonzepte oder Technologien einsetzen?
- Welche Entscheidungen der Vergangenheit haben sich als unpassend herausgestellt und sollten revidiert werden?
- Welche Technologien sind mittlerweile veraltet?

## 7. Ausblick und Pläne für die Zukunft

- Welche Verbesserungsmöglichkeiten gibt es?
- Welche Weiterentwicklungen sind geplant?

## 8. Glossar

Hier definieren wir Begriffe, die der Zielgruppe beim Lesen des Dokuments unklar sein könnten. Der Umfang und Detailgrad variiert dabei stark je nach Wissenstand der Zielgruppe. Z.B. muss man erfahrenen Entwickler:innen nicht erklären, was eine NoSQL-Datenbank ist, dem Management aber eher schon. Umgekehrt gibt es vielleicht Fachbegriffe, die den Fachabteilungen geläufig sind, die für Architekten und Entwickler jedoch unbekannt sind.

_Begriff_: Definition, zum Beispiel:

_CQRS_: Command-Query-Responsibility-Segregation ist ein Vorgehensmuster, welches unterschiedliche Datenmodelle und Schnittstellen für schreibende und lesenden Datenzugriffe verwendet. Weitere Informationen findet man in [Martin Fowlers Blogeintrag zu dem Thema (englisch)](https://martinfowler.com/bliki/CQRS.html).
