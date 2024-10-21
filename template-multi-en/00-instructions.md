# Architecture documentation template <!-- omit in toc -->

This is **version 2.0.0** of the ADF documentation template, created by Dominik Rost and Johannes Schneider. The template is distributed under a [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license](https://creativecommons.org/licenses/by-sa/4.0/).

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
