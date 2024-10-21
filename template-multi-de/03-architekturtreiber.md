# 3. Architekturtreiber (Funktion und Qualität)

In den folgenden Kapiteln wird ein Überblick über die wichtigsten Anforderungen für das System gegeben, welche die Ausgestaltung der Architektur beeinflussen. Diese Anforderungen, genannt Architekturtreiber, umfassen funktionale Anforderungen und Qualitätsanforderungen (in diesem Kapitel beschrieben) sowie Geschäftsziele und Randbedingungen (bereits in Kapitel 1 beschrieben).

## 3.1. Wesentliche funktionale Anforderungen

- Was sind die wichtigsten funktionalen Anforderungen an das System?
- Was muss das System können?
- Ohne welche Funktionen wäre das System wertlos?

## 3.2. Qualitätsattribute

- Was sind die Qualitätsanforderungen an das System, die einen treibenden Einfluss auf die Gestaltung der Architektur haben?
- Über welche Szenarios kann man überprüfen, ob das System die Qualitätsanforderungen erfüllt?

### 3.2.1. Szenario-Name (Szenario-ID) <!-- omit in toc -->

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

---

[← Vorheriges Kapitel: Systemkontext und Domäne](02-systemkontext-und-domaene.md) | [↑ Inhaltsverzeichnis](inhalt.md) | [Nächstes Kapitel: Systemdekomposition →](04-systemdekomposition.md)
