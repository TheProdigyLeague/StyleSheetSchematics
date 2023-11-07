# JavaScript_WebApplicationProgramming-Interface(jsapi)

[API's for Dummies]("https://en.wikipedia.org/wiki/API")

<img width="110" alt="NASA" src="https://github.com/TheProdigyLeague/StyleSheetSchematics/assets/30985576/9177f209-5d8c-4d6c-bd71-736e96398034">

The SASS project follows The [FULL PROCESS] policy. And, must follow The [FAST-TRACK] process.

[full process]: #process
[fast-track process]: #fast-track

*A FIVE STEP PROCESS!!!*

## Table of Contents

* [Process](#process)
* [Proposal](#proposal)
  * [JavaScript API Proposals](#javascript-api-proposals)
    * [Embedded Protocol](#embedded-protocol)
* [Fast Track](#fast-track)
* [Emergency Track](#emergency-track)
* [Large Language Models](#large-language-models)

## Process

The process for adding a new feature works as follows:

1.) This feature is informal. [ISSUES]("https://github.com/sass/sass/issues") New features come directly from The Community. Upon review from the Sass Team.

2.) Formal proposals is written for Features. Formatted PR. Upon review from the Sass Team.
  
a. implementations to add features. 

3.) Public comments via Tweets @SassCSS[X]("https://twitter.com/SassCSS") And feedbacks from blog posts. Upon review from The Sass Team.

` [versioning policy] 
<proposal>.changes.md
`

4.) Marked as accepted and moved. Written off. Alongside implementations for accuracy and sensibility.

   [the `accepted/` directory]: accepted
   [specs]: https://github.com/sass/sass-spec
   [Dart Sass]: https://github.com/sass/dart-sass

§   Affecting JS API and/or embedded protocol. Must create seperate PRs for updates. 

```yaml
options.yml
:ignore_for:
- libsass
```

§   Upon implementation completion. MSFT sends as PR [sass-spec] | [Dart Sass] with special lines.

   [sass-spec]: https://github.com/sass/sass-spec

§  PR includes `[skip dart-sass]` Causation is not run in Dart Sass TEST FAIL "NOT LANDED"

   * PR msg link _sass/sass-spec#1293_ sass/sass PR against specs in PR to TEST NEW! FEATURE


5.) Integration in _spec/dir_ and OFFICIAL LANGUAGE SPEC. 

a. __init__ imp 1<sup>st</sup>

§ Afterwards, revelation of shortcomings in proposal.

## Proposal

§ Feature proposals make possible for avg. Sass usr to contextualize forums. For Maintenance to implement consistency and well-formatted code. 
The following outlines are designed for needs: 

a.) MUST INCLUDE MANDATORY MINIMUM SUMMARIES OF SYNTAX AND SEMANTICS
optional: add-ons, sections, divisionaries, sub-sections, readability, table of contents, and/or links.

b.) MUST EXPLICITLY MARK AS NON-NORMATIVE AND SHOULBE BE CONSTRUED AS SUCH. SPEC/FEATURE/non-normative
NOTES: inline normative sections using [blockquotes]("https://daringfireball.net/projects/markdown/syntax#blockquote")

* **Background**

§  Non-normative - broader context for features. Relevant for changes existing towards syntaxical backwards-incompatible changes. Within the context of Sass's current behaviors. Original reasoning behind behavior for insufficiency.
[backgrounds]("https://github.com/sass/sass/blob/main/accepted/min-max.md#background")

* **Summary**

§  User Friendly - Concise summary of behaviors proposed. Not needed to be explicit. Cornerstone features and just gives users a general overview of how it works.
[Escaping]("accepted/identifier-escapes.md#summary")


  * **Design Decisions**

§    Design - Features and alternatives were considered and includes final decisions.
[Designing Features]("accepted/min-max.md#design-decisions")

* **Syntax**

§  Syntax - Adding new syntax to Sass. _Backus-Naur form_ WITH REGEX. (Expression-style operands) And conventional non-terminals as well as capitalized camel-case form.

  <x><pre>
  **MinMaxExpression** ::= CssMinMax | FunctionExpression
  **CssMinMax**        ::= ('min(' | 'max(') CalcValue (',' CalcValue)\* ')'
  **CalcValue**        ::= CalcValue (('+' | '-' | '*' | '/') CalcValue)+
  &#32;                  | '(' CalcValue ')'
  &#32;                  | ('calc(' | 'env(' | 'var(') InterpolatedDeclarationValue ')'
  &#32;                  | CssMinMax
  &#32;                  | Interpolation
  &#32;                  | Number
  </pre></x>

[Backus-Naur form]: https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form
_defining syntax refer productions from css specs_
[Range-Context]("accepted/media-ranges.md")

* **Semantics**

§ Describing runtime behavior of New Feature. Maybe omitted if feature has to do with stylesheet parsed. Semantics section covers everything about stylesheets evaluated including imports resolved and behavior of built-in funcs.
[CSS IMPORT SEMANTICS]("accepted/css-imports.md#semantics")

* **Deprecation Process**

§ Backwards-incompatibility features go through deprecation. [Policy]("https://github.com/sass/dart-sass#compatibility-policy") | [Deprecation]("accepted/css-imports.md#deprecation-process") Descriptions of details of that process included. Code will produce deprecation warnings. Those warnings indicate what users should do about their stylesheet forward-compatibility.

### JavaScript API

§ Code blocks in Markdown. Variants of [LIT_PROG]("https://en.wikipedia.org/wiki/Literate_programming") Specs prosed to be well-formatted with Headings and Cross-Links. (Still allows type declarations to be statically analyzed and auto-formatted) Spec editors:
```Node.js

npm -generate $true .d, .ts
    handle task
```
<break>

```bash

extensions .d, .ts, .md

```

![jsAPI](https://github.com/TheProdigyLeague/StyleSheetSchematics/assets/30985576/30ab046c-6a47-4aa0-b512-22573f6ec8cf)

§ JS API has norm-lang-prose. Rather than Syntaxical and Semantic. (Declaration merging) when prose to describe mods that exist within api. If deprecated then written after api. [Declarations]("https://www.typescriptlang.org/docs/handbook/declaration-merging.html") Which formally describes compiler behavior. Written as _specs_ rather than *docs* —explicitly specifies implemented behavior enough to detail and ensure implementations does not produce diffs-usr Visible. Defining new _types/members_ Has it's own top-level. Each member has subsection. _module-level/field_

#### Embedded Protocol

![java_script_applicationProgrammingInt](https://github.com/TheProdigyLeague/StyleSheetSchematics/assets/30985576/61aa33ab-5130-4b3b-8b73-5afb263a1bac)

§ JavaScript API's also need embedded protocols. Which communicates between compiler (DART-SASS) and Node.js (embed-HOST) protocol-buffer definition-format. From Markdown and TypeScript. (You) include in code_blocks in prose under "embed proto". [SPECS]("spec/embedded-protocol.md") | [NODE.JS]("https://github.com/sass/embedded-host-node")

## Fast Track

§ When a new feature is too small and not controversial. It warrants full-fledge prose procs. *fast-track* (Requires less time to review...)

Requirements:

* Simple language

* `\mod.spec/dir/port/accepted`

* must be done before prose can move to second step

* very little mod*spec_imp (Requires little work)

* non-deprecated (no backwards incompatibilities)

## Emergency Track

§ Sometimes, despite our best efforts, a new language change will inadvertently damage pre-existing Sass stylesheets. We have a unique track for updates that is highly limited but requires minimum upfront approval in order to get people back online as soon as feasible.

> BUG-FIXES of spec is inconsistent.
> Doesn't match behavior
> Doesn't need emergency-track
> Is necessary for situations where intended behvaior is harmful 

A change is eligible for the emergency track if it:

* Affects a feature that has already been changed in the past two weeks.

* Reverts that changed behavior in whole or in part to the original behavior
  prior to that change.

* Doesn't add any *new* behavior in addition to the reversion.

## Large Language Models

§ Please refrain from submitting any prose or code to this project that has been created or altered by huge language models or "artificial intelligence" programs like ChatGPT or GitHub Copilot. These techniques generate code that appears realistic, which increases the likelihood that it contains Bugs—that will probably be hard to find during review. Furthermore, it's not clear if we have the moral or legal right to release the code these models generate because they were trained indiscriminately and non-consensually on open-source material with a range of licenses throughout training.
