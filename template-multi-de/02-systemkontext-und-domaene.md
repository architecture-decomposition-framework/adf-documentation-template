# 2. Systemkontext und Domäne

Wir beschreiben in diesem Kapitel, in welchem Kontext das System eingesetzt wird.

## 2.1. System-Kontext-Abgrenzung

- Wie ist das System in seinen Kontext eingebettet?
- Von welchen Rollen wird das System aus welchem Grund verwendet?
- Welche Nutzerschnittstellen bietet das System?
- Mit welchen externen Systemen interagiert das System?
- (Wie ist das System in seine Systemlandschaft integriert?)
- Auf welche Weise interagiert das System mit externen Systemen und welche Daten werden ausgetauscht?

## 2.2. Domänenmodell

Hinweis: Die Dokumentationsvorlage ist allgemein gehalten und geht nicht davon aus, dass man die Systemarchitektur anhand der Domänen partitioniert (wie z.B. bei Domain-Driven-Design üblich). Dennoch ist es sinnvoll, dass wir in diesem Kapitel verschiedene Geschäftsbereiche aufführen, welche vom System betroffen sind (und dies mit Kapitel [1.3. Stakeholder](01-einleitung#13-stakeholder) abzugleichen).

- Welche unterschiedlichen Domänen/Geschäftsbereiche werden im System behandelt?
- Welche Entitäten, also Kernelemente aus den geschäftlichen Domäne, gibt es, die im System eine Bedeutung haben und davon verarbeitet werden müssen?
- Wie hängen die Entitäten miteinander zusammen?
- Haben gewisse Entitäten in unterschiedlichen Domänen jeweils eine unterschiedliche Bedeutung?

Beispielsweise könnte ein E-Commerce-System die Geschäftsbereiche Beschaffung, Bestellung, Bezahlung abdecken, mit den Entitäten Beschaffer und Artikel im Bereich Beschaffung sowie Besteller und Artikel im Bereich Bestellung. Die Entität Artikel beschreibt prinzipiell dasselbe, hat aber in den Bereichen Beschaffung und Bestellung vielleicht unterschiedliche Eigenschaften (z.B. Einkaufspreis versus Verkaufspreis).

---

[← Vorheriges Kapitel: Einleitung](01-einleitung.md) | [↑ Inhaltsverzeichnis](inhalt.md) | [Nächstes Kapitel: Architekturtreiber →](03-architekturtreiber.md)
