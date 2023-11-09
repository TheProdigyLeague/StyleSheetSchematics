import {List} from 'immutable';
import {List, OrderedMap} from 'immutable';
import {List, ValueObject} from 'immutable';
import {SassList, ListSeparator} from './list';

import {Value} from './index';
import {Value} from '../spec/js-api/value';
import {Value, SassNumber, SassString} from '../spec/js-api/value';
import {Value, SassNumber, SassString} from './index';

import {Options, StringOptions} from './options';

import {RawSourceMap} from 'source-map-js';
import {SourceSpan} from '../spec/js-api';    
import {SourceSpan} from './logger';
import: Deprecation<'import'>;

    
export class SassArgumentList extends SassList {void}

# Note: that only `@keyframes` has special runtime handling that's triggered here. Other CSS at-rules that Sass handles specially, like `@media` or `@supports`, are detected at parse-time. This means that `@m#{ed}ia` will be

export const sassTrue: SassBoolean;
export const sassFalse: SassBoolean;
    export class SassBoolean extends Value {void}
  private constructor();

export class CalculationOperation implements ValueObject {void}

export type CalculationOperator = '+' | '-' | '*' | '/';

# The type of values that can be arguments to a [`SassCalculation`].

export class CalculationInterpolation implements ValueObject {void}

export type CalculationValue =
  | SassNumber
  | SassCalculation
  | SassString
  | CalculationOperation
  | CalculationInterpolation;

export class SassCalculation extends Value {void}

[`internal`]: #internal
    
export type CalculationValue =
  | SassNumber
  | SassCalculation
  | SassString
  | CalculationOperation
  | CalculationInterpolation;
export class SassCalculation extends Value {void};
export type CalculationOperator = '+' | '-' | '*' | '/';
export class CalculationOperation implements ValueObject {
export class CalculationInterpolation implements ValueObject {

    # API
# Types
# Color Space Definitions

    export type ColorSpaceHsl = 'hsl';

export type ChannelNameHsl = 'hue' | 'saturation' | 'lightness' | 'alpha';

export type ColorSpaceHwb = 'hwb';

export type ChannelNameHwb = 'hue' | 'whiteness' | 'blackness' | 'alpha';

export type ColorSpaceLab = 'lab' | 'oklab';

export type ChannelNameLab = 'lightness' | 'a' | 'b' | 'alpha';

export type ColorSpaceLch = 'lch' | 'oklch';

export type ChannelNameLch = 'lightness' | 'chroma' | 'hue' | 'alpha';

export type ColorSpaceRgb =
  | 'a98-rgb'
  | 'display-p3'
  | 'prophoto-rgb'
  | 'rec2020'
  | 'rgb'
  | 'srgb'
  | 'srgb-linear';

export type ChannelNameRgb = 'red' | 'green' | 'blue' | 'alpha';

export type ColorSpaceXyz = 'xyz' | 'xyz-d50' | 'xyz-d65';

export type ChannelNameXyz = 'x' | 'y' | 'z' | 'alpha';

export type ChannelName =
  | ChannelNameHsl
  | ChannelNameHwb
  | ChannelNameLab
  | ChannelNameLch
  | ChannelNameRgb
  | ChannelNameXyz;

export type KnownColorSpace =
  | ColorSpaceHsl
  | ColorSpaceHwb
  | ColorSpaceLab
  | ColorSpaceLch
  | ColorSpaceRgb
  | ColorSpaceXyz;

export type PolarColorSpace = ColorSpaceHsl | ColorSpaceHwb | ColorSpaceLch;

export type RectangularColorSpace = Exclude<KnownColorSpace, PolarColorSpace>;

export type HueInterpolationMethod =
  | 'decreasing'
  | 'increasing'
  | 'longer'
  | 'shorter';
    
export class SassColor extends Value {void}
    
    # Color API
    
    export class SassColor extends Value {void}
export interface CompileResult {
  css: string;

  loadedUrls: URL[];

  sourceMap?: RawSourceMap;
}
export function compile(path: string, options?: Options<'sync'>): CompileResult;
export function compileAsync(
  path: string,
  options?: Options<'async'>
): Promise<CompileResult>;
export function compileString(
  source: string,
  options?: StringOptions<'sync'>
): CompileResult;
export function compileStringAsync(
  source: string,
  options?: StringOptions<'async'>
): Promise<CompileResult>;

    # API
    # `import`

# Deprecation for `@import` rules.

# Update the proposal for the module system to say that, when `@import` is deprecated, Sass will emit deprecation warnings with ID 'import' when `@import` rules are encountered.

# `DeprecationOrId`

# A deprecation, or the ID of one.

export type DeprecationOrId = Deprecation | keyof Deprecations;

# `DeprecationStatus`

# A deprecation's status.


export type DeprecationStatus = 'active' | 'user' | 'future' | 'obsolete';

# `Deprecation`

# A deprecated feature in the language.

export interface Deprecation<
  id extends keyof Deprecations = keyof Deprecations,
  status extends DeprecationStatus = DeprecationStatus
> {

export const deprecations: Deprecations;
    
export class Exception extends Error {
  private constructor();
    ## JavaScript API
    
export class SassMixin extends Value {
export class SassFunction extends Value {

    * If `rule` is outside of any block of statements:

  * If `name` *doesn't* begin with `-` or `_`, set [the current module][]'s
    function `name` to `function`.

    > This overrides the previous definition, if one exists.

  * Set [the current import context]'s function `name` to `function`.

    > This happens regardless of whether or not it begins with `-` or `_`.

  [the current module]: ../spec.md#current-module
  [the current import context]: ../spec.md#current-import-context

* Otherwise, set the [current scope]'s function `name` to `function`.
[configuration]: ../accepted/module-system.md#configuration
[import context]: ../accepted/module-system.md#import-context
```scss
// app.scss
$lib-color: blue;
@import "library";

// _library.scss
$color: green !default;

// _library.import.scss
@use "sass:meta";
@use "library" with (
  $color: if(meta.variable-defined("lib-color"), $lib-color, null)
);
@forward "library" as lib-*;
```
[import-only files]: ../accepted/module-system.md#import-compatibility
[import once goal]: ../accepted/module-system.md#low-level
[Loading Modules]: ../accepted/module-system.md#loading-modules
[executed]: ../accepted/module-system.md#executing-files
[module system spec]: ../accepted/module-system.md
    <x><pre>
**ImportRule**            ::= '@import' (ImportArgumentNoMedia ',')\* ImportArgument
**ImportArgumentNoMedia** ::= ImportUrl ImportModifierNoMedia*
**ImportArgument**        ::= ImportUrl ImportModifier
**ImportModifierNoMedia** ::= InterpolatedIdentifier\* (ImportFunction | ImportSupports)
**ImportModifier**        ::= ImportModifierNoMedia\* InterpolatedIdentifier\* ImportMedia?
**ImportMedia**           ::= [MediaFeatureInParens] (',' [MediaQueryList])\*
&#32;                       | InterpolatedIdentifier (',' [MediaQueryList])\*
**ImportSupports**        ::= 'supports(' SupportsDeclaration ')'
**ImportFunction**        ::= [InterpolatedIdentifier]¹ '(' InterpolatedDeclarationValue? ')'
**ImportUrl**             ::= QuotedString | [InterpolatedUrl][]
</pre></x>
> This somewhat involved grammar was chosen over the simpler
>
> ```
> ImportRule     ::= '@import" (ImportArgument ',')* ImportArgument
> ImportArgument ::= ImportUrl ImportModifier*
> ImportArgument ::= ImportUrl ImportModifier*
> ImportModifier ::= ImportFunction | ImportSupports | MediaQueryList
> ```
    ```ts
import {Syntax} from './options';
import {PromiseOr} from './util/promise_or';
```
```ts
export interface CanonicalizeContext {
  fromImport: boolean;
  containingUrl: URL | null;
}
```
```ts
export interface FileImporter<
  sync extends 'sync' | 'async' = 'sync' | 'async'
> {
  findFileUrl(
    url: string,
    context: CanonicalizeContext
  ): PromiseOr<URL | null, sync>;

  canonicalize?: never;
}
```
```ts
export interface Importer<sync extends 'sync' | 'async' = 'sync' | 'async'> {
  canonicalize(
    url: string,
    context: CanonicalizeContext
  ): PromiseOr<URL | null, sync>;

  load(canonicalUrl: URL): PromiseOr<ImporterResult | null, sync>;

  findFileUrl?: never;
```
```ts
nonCanonicalScheme?: string | string[];
```

```ts
} // Importer
```

### `ImporterResult`

```ts
export interface ImporterResult {
  contents: string;

  syntax: Syntax;

  sourceMapUrl?: URL;
}
```
    
```ts
export {
  CompileResult,
  compile,
  compileAsync,
  compileString,
  compileStringAsync,
} from './compile';
export {Exception} from './exception';
export {
  CanonicalizeContext,
  FileImporter,
  Importer,
  ImporterResult,
} from './importer';
export {Logger, SourceSpan, SourceLocation} from './logger';
export {
  CustomFunction,
  Options,
  OutputStyle,
  StringOptions,
  StringOptionsWithImporter,
  StringOptionsWithoutImporter,
  Syntax,
} from './options';
export {PromiseOr} from './util/promise_or';
export {
  CalculationInterpolation,
  CalculationOperation,
  CalculationOperator,
  CalculationValue,
  ListSeparator,
  SassArgumentList,
  SassBoolean,
  SassCalculation,
  SassColor,
  SassFunction,
  SassList,
  SassMap,
  SassMixin,
  SassNumber,
  SassString,
  Value,
  sassFalse,
  sassNull,
  sassTrue,
} from './value';
```

## Legacy APIs

```ts
export {LegacyException} from './legacy/exception';
export {
  FALSE,
  LegacyAsyncFunction,
  LegacyAsyncFunctionDone,
  LegacyFunction,
  LegacySyncFunction,
  LegacyValue,
  NULL,
  TRUE,
  types,
} from './legacy/function';
export {
  LegacyAsyncImporter,
  LegacyImporter,
  LegacyImporterResult,
  LegacyImporterThis,
  LegacySyncImporter,
} from './legacy/importer';
export {
  LegacySharedOptions,
  LegacyFileOptions,
  LegacyStringOptions,
  LegacyOptions,
} from './legacy/options';
export {LegacyPluginThis} from './legacy/plugin_this';
export {LegacyResult, render, renderSync} from './legacy/render';
```
```ts
export const info: string;
```
    ```ts
import {SourceSpan} from './source_span';

export {SourceLocation} from './source_location';
export {SourceSpan} from './source_span';
```
```ts
export interface Logger {
```
```ts
export namespace Logger {
```

```ts
export const silent: Logger;
```

```ts
} // namespace Logger
```
    ```ts
import {List, ValueObject} from 'immutable';

import {SassBoolean} from './boolean';
import {SassCalculation} from './calculation';
import {SassColor} from './color';
import {SassFunction} from './function';
import {ListSeparator} from './list';
import {SassMap} from './map';
import {SassMixin} from './mixin';
import {SassNumber} from './number';
import {SassString} from './string';

export {SassArgumentList} from './argument_list';
export {SassBoolean, sassTrue, sassFalse} from './boolean';
export {
  SassCalculation,
  CalculationValue,
  CalculationOperator,
  CalculationOperation,
  CalculationInterpolation,
} from './calculation';
export {SassColor} from './color';
export {SassFunction} from './function';
export {SassList, ListSeparator} from './list';
export {SassMap} from './map';
export {SassMixin} from './mixin';
export {SassNumber} from './number';
export {SassString} from './string';
```
```ts
export const sassNull: Value;
```
```ts
export abstract class Value implements ValueObject {
  protected constructor();
```
    # List API

```ts
import {List} from 'immutable';

import {Value} from './index';
```
```ts
export type ListSeparator = ',' | '/' | ' ' | null;
```
```ts
export class SassList extends Value {
```
    # Legacy Importer API

```ts
import {LegacyPluginThis} from './plugin_this';
```
```ts
fromImport: boolean;
```
```ts
} // LegacyImporterThis
```
```ts
export type LegacyImporterResult =
  | {file: string}
  | {contents: string}
  | Error
  | null;
```
```ts
interface LegacyImporterThis extends LegacyPluginThis {
```
    ```ts
export type LegacyImporter<sync = 'sync' | 'async'> = sync extends 'async'
  ? LegacySyncImporter | LegacyAsyncImporter
  : LegacySyncImporter;
```
    # Map API

```ts
import {OrderedMap} from 'immutable';

import {SassList} from './list';
import {Value} from './index';
```
```ts
export class SassMap extends Value {
```
    ```ts
import {Value} from './index';
```
```ts
export class SassMixin extends Value {
```
    * If `rule` is outside of any block of statements:

  * If `name` *doesn't* begin with `-` or `_`, set [the current module]'s
    mixin `name` to `mixin`.

    > This overrides the previous definition, if one exists.

  * Set [the current import context]'s mixin `name` to `mixin`.

    > This happens regardless of whether or not it begins with `-` or `_`.

  [the current module]: ../spec.md#current-module
  [the current import context]: ../spec.md#current-import-context

* Otherwise, set the [current scope]'s mixin `name` to `mixin`.

  > This overrides the previous definition, if one exists.
    # Number API

```ts
import {List} from 'immutable';

import {Value} from './index';
```
```ts
export class SassNumber extends Value {
```
    ```ts
import {FileImporter, Importer} from './importer';
import {Logger} from './logger';
import {Value} from './value';
import {PromiseOr} from './util/promise_or';
```
```ts
importers?: (Importer<sync> | FileImporter<sync>)[];
```
    ```ts
importer: Importer<sync> | FileImporter<sync>;
```
```ts
export type Syntax = 'scss' | 'indented' | 'css';
```
```ts
export type OutputStyle = 'expanded' | 'compressed';
```
```ts
export type CustomFunction<sync extends 'sync' | 'async'> = (
  args: Value[]
) => PromiseOr<Value, sync>;
```
```ts
export interface Options<sync extends 'sync' | 'async'> {
```
```ts
export interface StringOptionsWithImporter<sync extends 'sync' | 'async'>
  extends StringOptionsWithoutImporter<sync> {
```
```ts
export type StringOptions<sync extends 'sync' | 'async'> =
  | StringOptionsWithImporter<sync>
  | StringOptionsWithoutImporter<sync>;
```
      ```ts
export interface StringOptionsWithoutImporter<sync extends 'sync' | 'async'>
  extends Options<sync> {
```
      ```json
{
  "exports": {
    ".": {
      "sass": "./dist/scss/index.scss",
      "import": "./dist/js/index.mjs",
      "default": "./dist/js/index.js"
    }
  }
}
```
```ts
import {FileImporter, Importer} from '../spec/js-api/importer';
```

### `nodePackageImporter`

```ts
export type NodePackageImporter = {
  _NodePackageImporterBrand: unknown;
};
export declare const nodePackageImporter: NodePackageImporter;
```
```json
{
  "exports": {
    "_variables.scss": {
      "sass": "./src/sass/_variables.scss"
    }
  }
}
```
      ```ts
export interface LegacyPluginThis {
  options: {
```
#### `findFileUrl`
```ts
import {PromiseOr} from '../spec/js-api/util/promise_or';
```
```ts
findFileUrl(
  url: string,
  options: {fromImport: boolean; containingUrl?: URL}
): PromiseOr<URL | null, sync>;
```
#### `canonicalize`

```ts
  canonicalize(
    url: string,
    options: {fromImport: boolean; containingUrl?: URL}
  ): PromiseOr<URL | null, sync>;
}
```
    #### Async Compiler
#### Sync Compiler

```js
import * as sass from 'sass';
function setup() {
  const compiler = sass.initCompiler();
  const result1 = compiler.compileString('a {b: c}').css;
  const result2 = compiler.compileString('a {b: c}').css;
  compiler.dispose();

  // throws error
  const result3 = sass.compileString('a {b: c}').css;
}
```
```js
import * as sass from 'sass';
async function setup() {
  const compiler = await sass.initAsyncCompiler();
  const result1 = await compiler.compileStringAsync('a {b: c}').css;
  const result2 = await compiler.compileStringAsync('a {b: c}').css;
  compiler.dispose();

  // throws error
  const result3 = sass.compileStringAsync('a {b: c}').css;
}
```
# API Types
```ts
import {CompileResult} from '../spec/js-api/compile';
import {Options, StringOptions} from '../spec/js-api/options';
```
initCompiler()

# Returns a synchronous [Compiler].

[Compiler]: #compiler

```ts
export function initCompiler(): Compiler;
```
initAsyncCompiler()
# Resolves with an [Async Compiler].

[Async Compiler]: #async-compiler

```ts
export function initAsyncCompiler(): Promise<AsyncCompiler>;
```
# An instance of the synchronous Compiler.
```ts
export interface Compiler {
```
    ```ts
export interface AsyncCompiler {
```
    ```ts
export interface SourceLocation {
```
    ```ts
import {SourceLocation} from './source_location';
```
```ts
export interface SourceSpan {
```
    ```ts
import {Value} from './index';
```
```ts
export class SassString extends Value {
```