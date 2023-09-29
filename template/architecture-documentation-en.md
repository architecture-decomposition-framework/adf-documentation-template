# Architecture documentation template <!-- omit in toc -->

This is **version 1.1.1 UNDER DEVELOPMENT** of the ADF documentation template, created by Dominik Rost and Johannes Schneider. The template is distributed under a [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license](https://creativecommons.org/licenses/by-sa/4.0/).

In each section of this template there are hints what we usually describe there. We remove these hints after we have filled in the sections - or we comment them out using HTML comments `<!--` (comment start) and `-->` (comment end).

<!-- This is a sample comment that is not shown in the preview / on the git server. -->

## General notes about using this template <!-- omit in toc -->

This document is written in [Markdown](https://en.wikipedia.org/wiki/Markdown), so we can easily edit it with text editors or IDEs, and put it under version control (e.g. by using Git). If we prefer a word processor, we can copy and paste the HTML view there while preserving the heading levels.

Architecture documentation uses many **diagrams and figures**. These can be embedded as images in Markdown. A lot of information about the view framework ADF and the technical integration with this template (via Diagrams.net with matching ADF elements) can be found on the [overview page about the Architecture Decomposition Framework](https://github.com/architecture-decomposition-framework/welcome-to-adf). There is also a guide "[Architecture Design with the Architecture Decomposition Framework (ADF)](https://github.com/architecture-decomposition-framework/welcome-to-adf/blob/main/adf-design/Design.md)", introducing the ADF architecture design process that can help experienced and less experienced software architects with **architecture design**.

On the **size of a documentation**: Since there is no "one size fits it all" for architecture documentation, we can add more sections that we are missing or delete sections that are not relevant for our system. It is also possible to put the sections in a different order. However, from a practical point of view, it is recommended to choose the basic structure of the architecture documentation in a uniform way, because this facilitates to navigate around in other projects that also use this template. We know this principle of a uniform outline from package inserts for medicines or from game instructions for board games.

As a **first step** when creating and filling out an architecture documentation, we should always consider for which **target group** we write the documentation. For instance, an architecture documentation that explains the intended client-side caching mechanism to the development team varies greatly in technical depth from documentation that explains to the management why it is important to purchase a commercial technology to achieve a certain performance. The target audience can be described in section "1.5 Objectives of the document".

**Subsequently**, the completion of the template differs by whether we want to document an **already existing** system **or** create the documentation during the architecture design (perhaps **accompanying the implementation** as part of an agile approach). The first case often occurs when documentation is one of the (contractual agreed) deliverables, or when we realize that the system has become too complex to be comprehended as a whole solely by the developers' knowledge or from the source code. We can then work through the template from front to back. In the optimal case, we can enter a (nearly) complete list of requirements and architecture drivers into the appropriate chapters. Understanding the underlying architecture concepts usually takes several iterations, since we have to reconstruct them step by step.

Reconstructing documentation often reveals contradictory or inconsistent architecture decisions. Therefore, we should do **architecture work continuously**. We recommend to treat **architecture documentation** as a **living artifact** and, thus, develop it **incrementally**. In this case

- we fill in the first three chapters when the project has started (if necessary, only in bullet points),
- add requirements and further architecture drivers as far as we need them as a basis for the system decomposition and the architecture concepts,
- document technical debts and future plans in the final chapters whenever they become known, and
- successively extend the glossary to include terms that may not be known to the target audience of the documentation.

We make changes traceable by putting the documentation under version control (e.g., in a Git repository).

## Table of contents <!-- omit in toc -->

- [1. Introduction](#1-introduction)
  - [1.1. Business context](#11-business-context)
  - [1.2. System overview](#12-system-overview)
  - [1.3. Stakeholders](#13-stakeholders)
  - [1.4. Constraints](#14-constraints)
  - [1.5. Document goals](#15-document-goals)
- [2. System context and domain](#2-system-context-and-domain)
  - [2.1. System context delineation](#21-system-context-delineation)
  - [2.2. Domain model](#22-domain-model)
- [3. Architecture drivers (Function and Quality)](#3-architecture-drivers-function-and-quality)
  - [3.1. 3.1 Key functional requirements](#31-31-key-functional-requirements)
  - [3.2. Quality attributes](#32-quality-attributes)
- [4. System decomposition](#4-system-decomposition)
  - [4.1. Solution approach and key architecture decisions](#41-solution-approach-and-key-architecture-decisions)
  - [4.2. System structure](#42-system-structure)
  - [4.3. Data model](#43-data-model)
  - [4.4. Code organization (mapping runtime to devtime)](#44-code-organization-mapping-runtime-to-devtime)
  - [4.5. Build process and structure](#45-build-process-and-structure)
  - [4.6. Deployment and operation](#46-deployment-and-operation)
  - [4.7. Technologies](#47-technologies)
- [5. Architecture concepts](#5-architecture-concepts)
  - [5.1. Concept #1](#51-concept-1)
    - [5.1.1. Architecture drivers](#511-architecture-drivers)
    - [5.1.2. Solution idea](#512-solution-idea)
    - [5.1.3. Design decisions](#513-design-decisions)
    - [5.1.4. Discarded alternatives](#514-discarded-alternatives)
  - [5.2. Concept #2](#52-concept-2)
    - [5.2.1. Architecture drivers](#521-architecture-drivers)
    - [5.2.2. Solution idea](#522-solution-idea)
    - [5.2.3. Design decisions](#523-design-decisions)
    - [5.2.4. Discarded alternatives](#524-discarded-alternatives)
- [6. Risks and technical debts](#6-risks-and-technical-debts)
- [7. Outlook and future plans](#7-outlook-and-future-plans)
- [8. Glossary](#8-glossary)

## 1. Introduction

In the introduction, we create a basic understanding of the system for the reader. We describe the business context with underlying business goals for the system, provide a top-level overview of the system, identify constraints to be considered, and relevant stakeholders. In addition, we explain the goals of this document.

### 1.1. Business context

Each system is embedded in its business context. This section helps to understand this context in order to get a complete picture of the system and comprehend the design decisions.

In the text of this section, the following questions should be answered:

- What are the motivation and core drivers for the development of the system?
- What are particular challenges?
- What business goals are to be achieved or supported by the system?
- In which business or project context is the system embedded?
- What are the resulting tasks for the system?

### 1.2. System overview

We describe all the main features that would be listed on a (fictitious) product box for this software:

- What is the core idea behind this system/software?
- What are the most important functionalities of the system?
- What are the really important quality features of the system?
- What makes the system usable?

### 1.3. Stakeholders

A stakeholder is a person or organization that (directly or indirectly) influences the requirements of a system or that is affected by the system.

- What are the key stakeholders of the system?
  - Internal and external stakeholders
  - Direct stakeholders such as: Users, operation staff, developers, test team, support team, ...
  - Indirect stakeholders such as: Managers, Marketing, ...
- What are the respective activities and responsibilities of each stakeholder?
- What are their respective concerns? That is, what is important to them in the system and what is their respective expectation?

### 1.4. Constraints

- What are important constraints and specifications that have to be accepted as "fixed" or "given" during development? For example:
  - Domain constraints ("To be considered a medical system, the system must meet X, Y, Z").
  - Organizational constraints such as processes, team structure/size, security policies, open- or closed-source strategies
  - Technical constraints ("The system must use the existing Oracle database")
  - Legal constraints ("The system must be GDPR compliant")
  - Cost and time ("The system must be implemented by 2.2.2022 with a budget of €222,222.")
- What impact on development, quality assurance and operations can be directly derived from the constraints?
- Do the constraints apply to the system, a product family, or the entire company?

Note: We should always question the constraints, because

- they are often not as fixed as they may seem,
- they limit the solution space, and
- they may be outdated when the project finally starts.

### 1.5. Document goals

- What are the goals of the document?
- For which stakeholders does the document contain relevant information and where can each of these be found?
- What is the status of the system and this document?
  - Example: This documentation is a draft and describes a system that is still in the planning stage.
  - Or: This documentation is completed and describes the system version 2.3, which has been in operation since 15.7.2020.

## 2. System context and domain

In this chapter, we describe the context in which the system is used.

### 2.1. System context delineation

- How is the system embedded in its context?
- Which roles use the system and for what reason?
- What user interfaces does the system provide?
- With which external systems does the system interact?
- (How is the system integrated into its system landscape?)
- In which way does the system interact with external systems and which data is exchanged?

### 2.2. Domain model

Note: This general documentation template does not assume that the system architecture is partitioned by domains (as is common, for example, in domain-driven design). Nevertheless, it is helpful to list different business domains that are affected by the system in this chapter (and to align this with chapter [1.3. Stakeholders](#13-stakeholders)).

- Which different domains are handled in the system?
- What entities, i.e. core elements from the business domains, do exist that have meaning in the system and need to be processed by it?
- How are the entities related to each other?
- Do certain entities in different domains each have a different meaning?

For example, an e-commerce system could cover the business domains procurement, ordering, payment, with the entities procurer and article in the procurement domain and orderer and article in the ordering domain. The entity article principally resemble each other, however they can have different attributes in the procurement and order domain (e.g. purchase price versus selling price).

## 3. Architecture drivers (Function and Quality)

The following chapters give an overview of the most important requirements for the system that influence architecture design. These requirements, called architecture drivers, include functional requirements and quality requirements (described in this chapter) as well as business goals and constraints (already described in chapter 1).

### 3.1. 3.1 Key functional requirements

- What are the most important functional requirements for the system?
- What must the system be able to do at its core?
- Which functions cannot be left out?

### 3.2. Quality attributes

- What are the quality requirements for the system that drive the design of the architecture?
- Which scenarios can be used to check whether the system meets the quality requirements?

A good way to express quality attributes in both a measurable and traceable way, is by using architecture scenarios which can be written in the following form (either as bullet points or as a table).

#### 3.2.1. Scenario name (Scenario ID) <!-- omit in toc -->

- Priority: High (High, Medium, Low)
- Status: Open (Open, Ready, Implemented). _Further options may be useful. The set of states should be defined at the beginning of the project._
- Environment: _Context and/or initial situation applying to this scenario_
  - _Quantification (if applicable), i.e. measurable effects applying to the environment_
- Stimulus: _The event, trigger or condition arising from this scenario_
  - _Quantification (if applicable), i.e. measurable effects applying to the stimulus_
- Response: _The expected reaction of the system to the scenario event (black box view putting no constraints on the design)_
  - _Quantification (if applicable), i.e. measurable effects applying to the response and/or measurable indicators that the scenario has been achieved by the architecture_

As table:

| Categorization  |                            |               |
| --------------- | -------------------------- | ------------- |
| Scenario Name   | _Name_                     |               |
| Scenario ID     | _ID_                       |               |
| Priority        | _High, Medium, Low_        |               |
| Status          | _Open, Ready, Implemented_ |               |
| **Description** | **Quantification**         |
| Environment     | _Description_              | _Description_ |
| Stimulus        | _Description_              | _Description_ |
| Response        | _Description_              | _Description_ |

## 4. System decomposition

In the subsections of this chapter, we describe a basic solution strategy for the system, important decisions made for the system, how the system is organized by functionality, data, and deployment, and why the organization was chosen accordingly.

### 4.1. Solution approach and key architecture decisions

- What is the basic solution approach for the system? And what fundamental architectural decisions have been made? E.g. local desktop application versus distributed client-server system, monolithic deployment versus (micro-)service deployment.
- Which architecture drivers have been prioritized in this approach?
- With which drivers were compromises made? Which compromises?

### 4.2. System structure

- On which criteria is the system partitioned at the top level? Is it more of a technical partition (different layers) or a functional partition (clustered by domains/business areas)?
- How are the individual system parts related to each other?
- What dependencies and synchronization requirements exist?
- What is the functional decomposition of the system parts at runtime in terms of components?
- Which tasks do the individual components have?
- How do they interact with each other?
- What data is exchanged between the components?

We recommend creating subchapters for the top-level decomposition and each more detailed description of a system part.

### 4.3. Data model

- What is the basic data model for the system (at runtime)?
- What are the entities? How do they relate to the domain model described in [chapter 2.2](#22-domain-model)?
- What are the relationships between the entities?
- Which entities are used globally throughout the system? Which are specific to individual parts of the system?

### 4.4. Code organization (mapping runtime to devtime)

- How are components (runtime) mapped to modules (development time) (runtime-to-devtime mapping)?
- By which code structures (e.g. Java classes) are the modules realized?
- How are the data structures realized in code? Which data types are there? Is there inheritance or composition among the data types?
- How is the source code organized in packages?
- Which version control system is used? Which repositories exist for which source code and configuration?

### 4.5. Build process and structure

- What deployment artifacts are there?
- How are modules packaged into deployment artifacts?
- How are deployment artifacts created?
- What are the stages of the build process? What happens in each stage?

### 4.6. Deployment and operation

- What is the execution environment of the system?
- How is the system separated between client and backend? What are the different nodes or execution environments for client and backend?
- How are the deployment artifacts deployed into the execution environment(s)?
- What tools are used to do this?
- Is the system hosted by a cloud provider?
- Is a platform-as-a-service provider being used?

### 4.7. Technologies

- What are the main technologies used for the execution development of the system?
- What decisions have led to their use?
- What frameworks and reusable libraries are used? Why?

## 5. Architecture concepts

In this chapter, we describe how to achieve the functional and quality goals required by the architecture drivers.

### 5.1. Concept #1

We used the specific name of the solution concept as a heading, e.g. "Multi-tenancy concept", "Scalability", "Logging", "Testability", "Internationalization", "Monitoring", "Configuration", "Offline-usage and data synchronization".

#### 5.1.1. Architecture drivers

- Which drivers are addressed/implemented by this concept?

It is sufficient to insert references to the drivers (e.g. the scenario ID).

#### 5.1.2. Solution idea

- What is the idea with this concept?

We illustrate the idea with architectural views and accompanying text.

#### 5.1.3. Design decisions

- What fundamental design decisions have we made for this solution concept? E.g. architecture style(s), technologies, frameworks, strategies

#### 5.1.4. Discarded alternatives

- What alternative solution(s) did we discuss and discard?
- Why were they rejected?

### 5.2. Concept #2

Following the same scheme as for Concept #1, we describe further solution concepts here.

#### 5.2.1. Architecture drivers

#### 5.2.2. Solution idea

#### 5.2.3. Design decisions

#### 5.2.4. Discarded alternatives

## 6. Risks and technical debts

- Which design decisions are the riskiest, for example because they are based on assumptions that we have not or could not check thoroughly? Or because they use unknown solution concepts or technologies?
- Which past decisions have turned out to be inappropriate and should be revised?
- Which technologies have become obsolete?

## 7. Outlook and future plans

- What are possibilities for improvement?
- What advancements are planned?

## 8. Glossary

At last, we define terms that might be unclear to the target group of this document. Note that the extent and level of detail varies greatly depending on the level of knowledge of the target group. For example, it is not necessary to explain what a NoSQL database is to experienced developers, but it is more likely to be explained to management. Vice versa, there may be terminologies that are familiar to the business departments, but unknown to architects and developers.

_Term_: Definition, for example:

_CQRS_: Command-Query-Responsibility-Segregation is a software design pattern that uses different data models and interfaces for write and read access of data. For more information, see [Martin Fowler's blog entry on the subject](https://martinfowler.com/bliki/CQRS.html).
