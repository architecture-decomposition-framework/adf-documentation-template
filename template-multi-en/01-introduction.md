# 1. Introduction

In the introduction, we create a basic understanding of the system for the reader. We describe the business context with underlying business goals for the system, provide a top-level overview of the system, identify constraints to be considered, and relevant stakeholders. In addition, we explain the goals of this document.

## 1.1. Business context

Each system is embedded in its business context. This section helps to understand this context in order to get a complete picture of the system and comprehend the design decisions.

In the text of this section, the following questions should be answered:

- What are the motivation and core drivers for the development of the system?
- What are particular challenges?
- What business goals are to be achieved or supported by the system?
- In which business or project context is the system embedded?
- What are the resulting tasks for the system?

## 1.2. System overview

We describe all the main features that would be listed on a (fictitious) product box for this software:

- What is the core idea behind this system/software?
- What are the most important functionalities of the system?
- What are the really important quality features of the system?
- What makes the system usable?

## 1.3. Stakeholders

A stakeholder is a person or organization that (directly or indirectly) influences the requirements of a system or that is affected by the system.

- What are the key stakeholders of the system?
  - Internal and external stakeholders
  - Direct stakeholders such as: Users, operation staff, developers, test team, support team, ...
  - Indirect stakeholders such as: Managers, Marketing, ...
- What are the respective activities and responsibilities of each stakeholder?
- What are their respective concerns? That is, what is important to them in the system and what is their respective expectation?

## 1.4. Constraints

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

## 1.5. Document goals

- What are the goals of the document?
- For which stakeholders does the document contain relevant information and where can each of these be found?
- What is the status of the system and this document?
  - Example: This documentation is a draft and describes a system that is still in the planning stage.
  - Or: This documentation is completed and describes the system version 2.3, which has been in operation since 15.7.2020.

---

[↑ Table of Contents](toc.md) | [Next Chapter: 2. System context and domain →](02-system-context-and-domain.md)
