# 3. Architecture drivers (Function and Quality)

The following chapters give an overview of the most important requirements for the system that influence architecture design. These requirements, called architecture drivers, include functional requirements and quality requirements (described in this chapter) as well as business goals and constraints (already described in chapter 1).

## 3.1. 3.1 Key functional requirements

- What are the most important functional requirements for the system?
- What must the system be able to do at its core?
- Which functions cannot be left out?

## 3.2. Quality attributes

- What are the quality requirements for the system that drive the design of the architecture?
- Which scenarios can be used to check whether the system meets the quality requirements?

A good way to express quality attributes in both a measurable and traceable way, is by using architecture scenarios which can be written in the following form (either as bullet points or as a table).

### 3.2.1. Scenario name (Scenario ID) <!-- omit in toc -->

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
| **Description** | **Quantification**         |               |
| Environment     | _Description_              | _Description_ |
| Stimulus        | _Description_              | _Description_ |
| Response        | _Description_              | _Description_ |

---

[← Previous Chapter: 2. System context and domain](02-system-context-and-domain.md) | [↑ Table of Contents](toc.md) | [Next Chapter: 4. System decomposition →](04-system-decomposition.md
