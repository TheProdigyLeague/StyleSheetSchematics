# Contributing

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

§  User Friendly - Concise summary of behaviors proposed. Not needed to be explicit. Cornerstone features and just gives users a general overview of how ti works.
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
`Node.js
npm -generate $true .d, .ts
    handle task
`
<break>
`bash
extensions .d, .ts, .md
`
§ 

A JS API proposal has the same introduction, Background, and Summary sections as
a normal language proposal. Rather than Syntax and Semantics sections, it should
define the new behavior as TypeScript declarations, using [declaration merging]
when possible and prose otherwise to describe the changes to the existing API.
If a Deprecation Process section is necessary, it should be written after the
API.

[declaration merging]: https://www.typescriptlang.org/docs/handbook/declaration-merging.html

§ The new API should formally describe the behavior of the compiler. These should
be written *as a specification*, rather than *as documentation*—that is, they
should explicitly specify the behavior of the implementation in enough detail to
ensure that multiple implementations will not produce different user-visible
behavior.

§ When defining new types or members, each type should have its own top-level
section with each of its members should have a subsection beneath it.
Module-level fields should go in the "Fields" top-level section.

#### Embedded Protocol

§ Most proposals that affect the JavaScript API will also need to update the
[embedded protocol], which is used to communicate between the Dart Sass compiler
and the [Node.js embedded host] (as well as embedded hosts in other languages).

§ Although the protocol buffer definition format isn't automatically checked from
Markdown the way TypeScript is, you should still include it in code blocks in
your proposal under the "Embedded Protocol" section.

[embedded protocol]: spec/embedded-protocol.md
[Node.js embedded host]: https://github.com/sass/embedded-host-node

## Fast Track

§ Some features are too small and too unlikely to be controversial to warrant the
full-fledged proposal process. Features like that can be *fast-tracked*, a
process that requires less time and less reviewer energy than the normal flow.

A feature is eligible for fast-tracking if it:

* Is simple enough that it's unlikely to need to change substantially as a
  result of review.

* Modifies an existing specification in the `spec/` directory. It's fair game
  for a new spec to be written or ported from [the `accepted/` directory] in
  order for a proposal to be fast-tracked, but that must be done before the
  proposal can move to step 2.

* Requires very little modification of the specification and of the
  implementation. Ideally a fast-tracked feature requires very little
  modification of the sass-spec repo as well, but this may not always be
  feasible for features with many small edge cases or that happen to appear in
  many specs.

* Requires no deprecations and introduces no backwards incompatibilities.

§ The proposal author makes the initial decision about whether or not to
fast-track a feature. However if anyone (whether they're a member of the Sass
team or just a community member) requests that that feature be moved to the full
process, it must be moved so that it can have a full discussion.

The fast-track process works as follows:

1. The feature is informally discussed on [the issue tracker][]. Once the Sass
   team has agreed that a feature is desirable, it's marked as [Planned][] and
   can move to step 2.

2. Issues are opened for each individual implementation to add the feature.
   These issues should link to the feature's main issue in the [sass/sass][]
   issue tracker, and that issue should link back to the implementation issues.

   Three pull requests are sent out concurrently.

   1. A formal proposal is written for the feature as a pull request to this
      repository, where the Sass team will discuss its specifics with the
      author. *Unlike the full proposal process*, this pull request directly
      modifies the appropriate spec in `specs/`.

   2. A pull request is sent to [sass-spec][] that adds or updates specs for the
      new feature. The new specs should have an `options.yml` file that marks
      them as ignored for LibSass. For example:

      ```yaml
      ---
      :ignore_for:
      - libsass
      ```

      This pull request message should include `[skip dart-sass]`. This will
      cause it not to run Dart Sass tests, which would otherwise fail because
      the implementation of the new feature hasn't landed yet.

   3. A pull request is sent to [Dart Sass][] that implements the new feature.
      This pull request's message should link to the sass-spec pull request (for
      example, `See sass/sass-spec#1293`). This will cause it to run against the
      specs in that pull request and so test your new feature.

§   These pull requests should remain open for at least two full workdays to
   ensure any interested parties have a chance to comment on them. After that
   point, *and* after all three pull requests have been approved by reviewers,
   they should be landed simultaneously.

## Emergency Track

§ Despite our best efforts, every now and then a new language change will
unintentionally breaks existing Sass stylesheets. In order to get users unbroken
as quickly as possible, we have a special track for changes that's highly
constrained but requires minimal up-front review.

> Note: Bug fixes where the wording of the spec is inconsistent or clearly
> doesn't match the intended behavior can just be fixed directly and don't need
> an emergency-track proposal. This is only necessary for situations where the
> intended behavior is unexpectedly harmful in some way.

A change is eligible for the emergency track if it:

* Affects a feature that has already been changed in the past two weeks.

* Reverts that changed behavior in whole or in part to the original behavior
  prior to that change.

* Doesn't add any *new* behavior in addition to the reversion.

The emergency track should only be used by Sass team members. The process works
as follows:

1. Three pull requests are sent out concurrently:

   1. A formal proposal is written for the feature as a pull request to this
      repository. *Unlike the full proposal process*, this pull request directly
      modifies the appropriate spec in `specs/`.

   2. A pull request is sent to [sass-spec] that adds or updates specs for the
      change. This pull request message should include `[skip dart-sass]`.

   3. A pull request is sent to [Dart Sass] that implements the change. This
      pull request's message should link to the sass-spec pull request (for
      example, `See sass/sass-spec#1293`).

2. These pull requests may be merged as soon as they're approved. If the issue
   appears outside of work hours, it may be merged without review, but a *post
   facto* review should be done as soon as possible.

## Large Language Models

§ Do not submit any code or prose written or modified by large language models or
"artificial intelligence" such as GitHub Copilot or ChatGPT to this project.
These tools produce code that looks plausible, which means that not only is it
likely to contain bugs those bugs are likely to be difficult to notice on
review. In addition, because these models were trained indiscriminately and
non-consensually on open-source code with a variety of licenses, it's not
obvious that we have the moral or legal right to redistribute code they
generate.
