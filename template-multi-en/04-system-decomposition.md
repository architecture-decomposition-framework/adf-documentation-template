# 4. System decomposition

In the subsections of this chapter, we describe a basic solution strategy for the system, important decisions made for the system, how the system is organized by functionality, data, and deployment, and why the organization was chosen accordingly.

## 4.1. Solution approach and key architecture decisions

- What is the basic solution approach for the system? And what fundamental architectural decisions have been made? E.g. local desktop application versus distributed client-server system, monolithic deployment versus (micro-)service deployment.
- Which architecture drivers have been prioritized in this approach?
- With which drivers were compromises made? Which compromises?

## 4.2. System structure

- On which criteria is the system partitioned at the top level? Is it more of a technical partition (different layers) or a functional partition (clustered by domains/business areas)?
- How are the individual system parts related to each other?
- What dependencies and synchronization requirements exist?
- What is the functional decomposition of the system parts at runtime in terms of components?
- Which tasks do the individual components have?
- How do they interact with each other?
- What data is exchanged between the components?

We recommend creating subchapters for the top-level decomposition and each more detailed description of a system part.

## 4.3. Data model

- What is the basic data model for the system (at runtime)?
- What are the entities? How do they relate to the domain model described in [chapter 2.2](02-system-context-and-domain.md#22-domain-model)?
- What are the relationships between the entities?
- Which entities are used globally throughout the system? Which are specific to individual parts of the system?

## 4.4. Code organization (mapping runtime to devtime)

- How are components (runtime) mapped to modules (development time) (runtime-to-devtime mapping)?
- By which code structures (e.g. Java classes) are the modules realized?
- How are the data structures realized in code? Which data types are there? Is there inheritance or composition among the data types?
- How is the source code organized in packages?
- Which version control system is used? Which repositories exist for which source code and configuration?

## 4.5. Build process and structure

- What deployment artifacts are there?
- How are modules packaged into deployment artifacts?
- How are deployment artifacts created?
- What are the stages of the build process? What happens in each stage?

## 4.6. Deployment and operation

- What is the execution environment of the system?
- How is the system separated between client and backend? What are the different nodes or execution environments for client and backend?
- How are the deployment artifacts deployed into the execution environment(s)?
- What tools are used to do this?
- Is the system hosted by a cloud provider?
- Is a platform-as-a-service provider being used?

## 4.7. Technologies

- What are the main technologies used for the execution development of the system?
- What decisions have led to their use?
- What frameworks and reusable libraries are used? Why?

---

[← Previous Chapter: 3. Architecture drivers (Function and Quality)](03-architecture-drivers.md) | [↑ Table of Contents](toc.md) | [Next Chapter: 5. Architecture concepts →](05-architecture-concepts.md
