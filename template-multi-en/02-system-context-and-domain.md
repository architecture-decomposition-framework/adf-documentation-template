# 2. System context and domain

In this chapter, we describe the context in which the system is used.

## 2.1. System context delineation

- How is the system embedded in its context?
- Which roles use the system and for what reason?
- What user interfaces does the system provide?
- With which external systems does the system interact?
- (How is the system integrated into its system landscape?)
- In which way does the system interact with external systems and which data is exchanged?

## 2.2. Domain model

Note: This general documentation template does not assume that the system architecture is partitioned by domains (as is common, for example, in domain-driven design). Nevertheless, it is helpful to list different business domains that are affected by the system in this chapter (and to align this with chapter [1.3. Stakeholders](01-introduction.md#13-stakeholders)).

- Which different domains are handled in the system?
- What entities, i.e. core elements from the business domains, do exist that have meaning in the system and need to be processed by it?
- How are the entities related to each other?
- Do certain entities in different domains each have a different meaning?

For example, an e-commerce system could cover the business domains procurement, ordering, payment, with the entities procurer and article in the procurement domain and orderer and article in the ordering domain. The entity article principally resemble each other, however they can have different attributes in the procurement and order domain (e.g. purchase price versus selling price).

---

[← Previous Chapter: 1. Introduction](01-introduction.md) | [↑ Table of Contents](toc.md) | [Next Chapter: 3. Architecture drivers (Function and Quality) →](03-architecture-drivers.md
