!usr/bin/scripts

# {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}
# {}                                                              {}
# {}      ___     _                _              __ _            {}
# {}     / __|   | |_      _ _    (_)    _ _     / _` |   ___     {}
# {}     \__ \   |  _|    | '_|   | |   | ' \    \__, |  (_-<     {}
# {}     |___/   _\__|   _|_|_   _|_|_  |_||_|   |___/   /__/_    {}
# {}   _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|   {}
# {}   "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'   {}
# {}                                                              {}
# {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}

$ type -script "calcs"
    {"struct"};
```bash
int Calc { name: string; arguments: CalculationValue[]; }

type CalculationValue =
  | Number
  | UnquotedString
  | CalculationOperation
  | Calculation;

interface CalculationOperation 
{
  operator: '+' | '-' | '*' | '/';
  left: CalculationValue;
  right: CalculationValue;
}
```
esac

$ this valid='.css' 
    {"struct"};
        $calc( 1 -var(+2)): .scss='struct'
        $calc( 1 #{"+ 2"}): prevent ERR calc(1 2)
        $calc( a b ): complex=verify # unquoted string partial operation not worth producing this edge case
esac

write `pow(var(2 -args ))` or $pow( -tag {"2, 3"} );
    $ calcs -args match=`number` #expected
esac

if -fs $import * -time then `.scss` $create `NEW` function('value') for `@function` -all -time -fs $import

# Because a new function value has been created, although the name, body, and
# source span of a given function from the file would be the same between imports
{
    -value =/= -refer -diff in `stance`
}; esac
# Functions pre-defined by the Sass language are instatiated at most once during the entire evaluation of a program.
# As an example, if we declare two functions:
```
> @function foo() {
>   @return red;
> }
>
> $a: meta.get-function(foo);
>
> @function foo {
>   @return red;
> }
>
> $b: meta.get-function(foo);
```
# Although every aspect of the two functions is the same, `$a != $b`, because they refer to separate function values.
```
> @mixin foo {
>   color: red;
> }
>
> $a: meta.get-mixin(foo);
>
> @mixin foo {
>   color: red;
> }
>
> $b: meta.get-mixin(foo);
```
# Each conversion factor is the equivalent of `1${unit}` in a canonical unit.

# Note: in an $id `a#{b}c`
# content of interpolation is evaluated
`runtime.dll` '&&' $ cat "rest * id" -prod "{}"
esac

-{b} # unquoted string-single expression conversion content of interpolation parsed as alpha char 
# hyphen id
`$var -#{b}` # parsed as space-separated.lst container
`$var` and `-#{b}` -op `$var - #{b}` # numbers are not id
`0#{$b}` '&&' `0` '&&' `#{$b}`
esac

if -input start `-#{}` # consume a single code point and add `"-"` to `components`.
if -input start #{} consume an interpolation and add expression to `components`.
'[consume identifier]'#(consuming-an-identifier)
+ -string `component`

while -input start #{}

'[identifier code point]'::'[]'::C:\_token

'[consume name]'#(consuming name)
+ -string `component`
$return `component`
esac

$ create ".scss --args .lst"
<args.scss><args.lst>
set -internal `.scss` --args `lst` -content 
<`internal`>
set `content, key` set -key '&&' `.lst` #seperator
set `seperator`
$return_this then esac
```
constructor(
  contents: Value[] | List<Value>,
  keywords: Record<string, Value> | OrderedMap<string, Value>,
  /** @default ',' */
  separator?: ListSeparator
);
```
$ `keywords`
<keywords.txt>
<`internal`>
$ get keywords(): OrderedMap<string, Value>;
```
{void}
<x><pre>
**UnknownAtRule** ::= '@' InterpolatedIdentifier InterpolatedValue?
&#32;                   ('{' Statements '}')?
</pre></x>
```
~
~
<api>demo.js<api>;
<`boolean.scss`>


$ get value(): boolean;
{void} # SassBoolean


# `Value`
declare module '../spec/js-api/value' {
  interface Value {
assertCalculation(name?: string): SassCalculation;
  }
} 

# `Options`
declare module '../spec/js-api/options' {
  interface Options<sync extends 'sync' | 'async'> {
  
functions?: Record<string, CustomFunction<sync>>;
  }
}
static calc(argument: CalculationValue): SassCalculation;
break;
static min(
  arguments: CalculationValue[] | List<CalculationValue>
): SassCalculation;
~
esac
static max(
  arguments: CalculationValue[] | List<CalculationValue>
): SassCalculation;

# `clamp`
static clamp(
  min: CalculationValue,
  value?: CalculationValue,
  max?: CalculationValue
): SassCalculation;
esac

# `name`
Returns [`internal`]'s `name` field.
[`internal`]: #internal
get name(): string;
Returns a list of [`internal`]'s arguments.

get arguments(): List<CalculationValue>;
{void}

#`CalculationOperator`
[`CalculationOperation`]: ../spec/types/calculation.md#types

# `internal`
[`Value.internal`]: ../spec/js-api/value/index.d.ts.md

# Constructor
constructor(
  operator: CalculationOperator,
  left: CalculationValue,
  right: CalculationValue
);

# `operator`
[co-internal]: #internal-1

get operator(): CalculationOperator;

# left

get left(): CalculationValue;

# `right`

get right(): CalculationValue;

equals(other: unknown): boolean;

hashCode(): number;

{void}
    
[`CalculationInterpolation`]: ../spec/types/calculation.md#types
 
constructor(value: string);


# Returns [`internal`][ci-internal]'s `value` field.
[ci-internal]: #internal-2

get value(): string;

equals(other: unknown): boolean;

hashCode(): number;
{void}


# Returns [`internal`]'s `name` field.
static calc(argument: CalculationValue): SassCalculation;

static min(
  arguments: CalculationValue[] | List<CalculationValue>
): SassCalculation;

static max(
  arguments: CalculationValue[] | List<CalculationValue>
): SassCalculation;

static clamp(
  min: CalculationValue,
  value?: CalculationValue,
  max?: CalculationValue
): SassCalculation;

get name(): string;


# Returns a list of [`internal`]'s arguments.
get arguments(): List<CalculationValue>;{void};;# SassCalculation


# `CalculationOperator`is the set of possible operators in a Sass calculation.
constructor(
  operator: CalculationOperator,
  left: CalculationValue,
  right: CalculationValue
);

get operator(): CalculationOperator;
get left(): CalculationValue;
get right(): CalculationValue;
equals(other: unknown): boolean;

break;

.hashCode(): number;{void};;#CalculationOperation

_constructor(value: string);

get value(): string;

# Returns the name of [`internal`]'s space.
[`internal`]: ../spec/js-api/value/color.d.ts.md#internal

get space(): KnownColorSpace;

.toSpace(space: KnownColorSpace): SassColor;

get isLegacy(): boolean;

.isInGamut(space?: KnownColorSpace): boolean;
.toGamut(space?: KnownColorSpace): SassColor;

get channelsOrNull(): List<number | null>;
get channels(): List<number>;

.channel(channel: ChannelName): number;
.channel(channel: ChannelNameHsl, options: {space: ColorSpaceHsl}): number;
.channel(channel: ChannelNameHwb, options: {space: ColorSpaceHwb}): number;
.channel(channel: ChannelNameLab, options: {space: ColorSpaceLab}): number;
.channel(channel: ChannelNameLch, options: {space: ColorSpaceLch}): number;
.channel(channel: ChannelNameRgb, options: {space: ColorSpaceRgb}): number;
.channel(channel: ChannelNameXyz, options: {space: ColorSpaceXyz}): number;

get alpha(): number;

isChannelMissing(channel: ChannelName): boolean;

isChannelPowerless(channel: ChannelName): boolean;
isChannelPowerless(
  channel: ChannelNameHsl,
  options?: {space: ColorSpaceHsl}
): boolean;
isChannelPowerless(
  channel: ChannelNameHwb,
  options?: {space: ColorSpaceHwb}
): boolean;
isChannelPowerless(
  channel: ChannelNameLab,
  options?: {space: ColorSpaceLab}
): boolean;
isChannelPowerless(
  channel: ChannelNameLch,
  options?: {space: ColorSpaceLch}
): boolean;
isChannelPowerless(
  channel: ChannelNameRgb,
  options?: {space: ColorSpaceRgb}
): boolean;
isChannelPowerless(
  channel: ChannelNameXyz,
  options?: {space: ColorSpaceXyz}
): boolean;
esac
let `changedColor` is result of:

interpolate(color2: SassColor, options: {weight?: number}): SassColor;

interpolate(
  color2: SassColor,
  options: {
    weight?: number;
    method?: HueInterpolationMethod;
  }
): SassColor;

    new SassColor({
      hue: options.hue ?? color.channel('hue'),
      saturation: options.saturation ?? color.channel('saturation'),
      lightness: options.lightness ?? color.channel('lightness'),
      alpha: options.alpha ?? color.channel('alpha'),
      space: space
    })

# If `space` equals `hsl` and `spaceSetExplicitly` is `true`, let `changedColor` be the result of:
  new SassColor({
    hue: changedValue('hue'),
    saturation: changedValue('saturation'),
    lightness: changedValue('lightness'),
    alpha: changedValue('alpha'),
    space: space
  })

# If `space` equals `lab` or `oklab`, let `changedColor` be the result of:
  new SassColor({
    red: changedValue('red'),
    green: changedValue('green'),
    blue: changedValue('blue'),
    alpha: changedValue('alpha'),
    space: space
  })

    new SassColor({
      hue: options.hue ?? color.channel('hue'),
      whiteness: options.whiteness ?? color.channel('whiteness'),
      blackness: options.blackness ?? color.channel('blackness'),
      alpha: options.alpha ?? color.channel('alpha'),
      space: space
    })
 
  new SassColor({
    hue: changedValue('hue'),
    whiteness: changedValue('whiteness'),
    blackness: changedValue('blackness'),
    alpha: changedValue('alpha'),
    space: space
  })

    new SassColor({
      red: options.red ?? color.channel('red'),
      green: options.green ?? color.channel('green'),
      blue: options.blue ?? color.channel('blue'),
      alpha: options.alpha ?? color.channel('alpha'),
      space: space
    })

  new SassColor({
    lightness: changedValue('lightness'),
    a: changedValue('a'),
    b: changedValue('b'),
    alpha: changedValue('alpha'),
    space: space
  })

# If `space` equals `lch` or `oklch`, let `changedColor` be the result of:
  new SassColor({
    lightness: changedValue('lightness'),
    chroma: changedValue('chroma'),
    hue: changedValue('hue'),
    alpha: changedValue('alpha'),
    space: space
  })

# If `space` equals `a98-rgb`, `display-p3`, `prophoto-rgb`, `rec2020`, `srgb`, or `srgb-linear`, let `changedColor` be the result of:
  new SassColor({
    red: changedValue('red'),
    green: changedValue('green'),
    blue: changedValue('blue'),
    alpha: changedValue('alpha'),
    space: space
  })
esac

# If `space` equals `xyz`, `xyz-d50`, or `xyz-d65`, let `changedColor` be the result of:  
  new SassColor({
    y: changedValue('y'),
    x: changedValue('x'),
    z: changedValue('z'),
    alpha: changedValue('alpha'),
    space: space
  })

return, 
[`changedColor.toSpace(initialSpace)`].
break;
[`this.toSpace(space)`]: #tospace
[`changedColor.toSpace(initialSpace)`]: #tospace
[`Changing a Component Value`]: #changing-a-component-value

change(
  options: {
    [key in ChannelNameHsl]?: number | null;
  } & {
    space?: ColorSpaceHsl;
  }
): SassColor;

change(
  options: {
    [key in ChannelNameHwb]?: number | null;
  } & {
    space?: ColorSpaceHwb;
  }
): SassColor;

change(
  options: {
    [key in ChannelNameLab]?: number | null;
  } & {
    space?: ColorSpaceLab;
  }
): SassColor;

change(
  options: {
    [key in ChannelNameLch]?: number | null;
  } & {
    space?: ColorSpaceLch;
  }
): SassColor;

change(
  options: {
    [key in ChannelNameRgb]?: number | null;
  } & {
    space?: ColorSpaceRgb;
  }
): SassColor;

change(
  options: {
    [key in ChannelNameXyz]?: number | null;
  } & {
    space?: ColorSpaceXyz;
  }
): SassColor;

constructor(options: {
  lightness: number | null;
  a: number | null;
  b: number | null;
  alpha?: number | null;
  space: ColorSpaceLab;
});

constructor(options: {
  lightness: number | null;
  chroma: number | null;
  hue: number | null;
  alpha?: number | null;
  space: ColorSpaceLch;
});

constructor(options: {
  red: number | null;
  green: number | null;
  blue: number | null;
  alpha?: number | null;
  space: Exclude<ColorSpaceRgb, 'rgb'>;
});

constructor(options: {
  x: number | null;
  y: number | null;
  z: number | null;
  alpha?: number | null;
  space: ColorSpaceXyz;
});

constructor(options: {
  hue: number | null;
  saturation: number | null;
  lightness: number | null;
  alpha?: number | null;
  space?: ColorSpaceHsl;
});

constructor(options: {
  hue: number | null;
  whiteness: number | null;
  blackness: number | null;
  alpha?: number | null;
  space?: ColorSpaceHwb;
});

constructor(options: {
  red: number | null;
  green: number | null;
  blue: number | null;
  alpha?: number | null;
  space?: 'rgb';
});

#proto
message Color {
  string space = 1;
  double channel1 = 2;
  double channel2 = 3;

  double channel3 = 4;
  
  double alpha = 5;
}

# Deprecations
do make for [`legacy_color_space`] | [`channel`] function("deprecation") 
$call`color-4-api`

# The following deprecated getters return the result of
[`this.channel(channelName, { space: "rgb" })`][`channel`] where `channelName` is name of $--git
* `red`
* `green`
* `blue`

# The following deprecated getters return the result of
[`this.channel(channelName, { space: "hsl" })`][`channel`] where `channelName` is name of $--git
* `hue`
* `saturation`
* `lightness`

# The following deprecated getters return the result of
[`this.channel(channelName, { space: "hwb" })`][`channel`] where `channelName` is name of $--git
* `whiteness`
* `blackness`

[`channel`]: #channel 
return, `this`

constructor(options: {
  red: number;
  green: number;
  blue: number;
  alpha?: number;
});

constructor(options: {
  hue: number;
  saturation: number;
  lightness: number;
  alpha?: number;
});

constructor(options: {
  hue: number;
  whiteness: number;
  blackness: number;
  alpha?: number;
});~
esac
    

# `red`

return, [`internal`]: $red_channel
get red(): number;

# `green`

return, [`internal`]: $green_channel

get green(): number;

# `blue`

return, [`internal`]: $blue_channel

get blue(): number;

# `hue`

return $value, $result, of *[`hue(internal)`]:[`hue(internal)`]:.../../built-in-modules/color.md#hue

get hue(): number;

# `saturation`

return $value, $result, of *[`saturation(internal)`]:[`saturation(internal)`]: ../../built-in-modules/color.md#saturation

get saturation(): number;

# `lightness`

return, $value, $result, of *[`lightness(internal)`]:[`lightness(internal)`]: ../../built-in-modules/color.md#lightness

get lightness(): number;

# `whiteness`

return, $value, $result, **[`whiteness(internal)`]:[`whiteness(internal)`]: ../../built-in-modules/color.md#whiteness

get whiteness(): number;

# `blackness`

return, $value, $result, **[`blackness(internal)`]:[`blackness(internal)`]: ../../built-in-modules/color.md#blackness

get blackness(): number;


# `alpha`

return, value of Result of [`alpha(internal)`]:

[`alpha(internal)`]: ../../built-in-modules/color.md#alpha

get alpha(): number;

# change:
```
return, "new" color create* 
\mod | *this color | .channel
```
if `options.whiteness` or `options.blackness` is set
return, $result **of:

  @SassColor({
    hue: options.hue ?? this.hue,
    whiteness: options.whiteness ?? this.whiteness,
    blackness: options.blackness ?? this.blackness,
    alpha: options.alpha ?? this.alpha
  })
  
# Otherwise:

if `options.hue`, `options.saturation`, or make `options.lightness`
  
  is set, return result of:
  
  @SassColor({
    
    hue: options.hue ?? this.hue,

});br;

+ $this -prose -able for `mixin` -pass -args for `@content` --blocks
{
    -pass -args "syntax accept" for `@include` then esac
}


@mixin accepts-content {
  @for $i from 1 to 5 {
    @content($i, 360deg * $i / 5);
  }
}br

@include accepts-content using ($number, $hue) {
  .color-#{$number} {
    background-color: hsl($hue, 75%, 90%);
  }
}
esac 

-args `.lst` for '[user support all features]' * -args `.lst` "declare"
        while "syntax" for -pass -args `@content`
            -diff "syntax" for "declare" -args "accept" * `@include` + `@@` -rule
@include accepts-content {
  @receive ($number, $hue);
        ...
}

# Adopting Rubys block syntax:

@include accepts-content { |$number, $hue|
        ...
}

# A Haskell-like punctuation syntax:

@include accepts-content -> ($number, $hue) {
        ...
}
```scss
using clear args
@include syntax
```
# [module system proposal][] uses to declare an argument *invocation* rather than an argument *declaration*.
```scss
using clear
declare args invoke
```
$[module_system_proposal]: ```\module-system.md```

# This Syntax proposal updates the syntax for `@content` and `@include` as follows:

<x><pre>
**ContentRule**      ::= '@content' ArgumentInvocation?
**IncludeRule**      ::= '@include' Identifier ArgumentInvocation? ContentBlock?
**ContentBlock**     ::= UsingDeclaration? '{' Statements '}'
**UsingDeclaration** ::= 'using' ArgumentDeclaration
</pre></x>

# Semantics - of this prose defines New Algorithm for eval @content Rule given @content rule within mixin invoke @include.

include

# Let invoke be content argsInvoke or args if content has no argsInvoke. @content, @content() interpret id.
# Let declaration be include UsingDeclaration, ArgsDeclaration or no args if include no UsingDeclaration.

@include fo {...} '&&' @include foo use () {...}
    saturation: options.saturation ?? this.saturation,
    lightness: options.lightness ?? this.lightness,
    alpha: options.alpha ?? this.alpha
  })

return, *result

  SassColor({
    red: options.red ?? this.red,
    green: options.green ?? this.gren,
    blue: options.blue ?? this.blue,
    alpha: options.alpha ?? this.alpha
  })
change(options: {
  red?: number;
  green?: number;
  blue?: number;
  alpha?: number;
}): SassColor;
change(options: {
  hue?: number;
  saturation?: number;
  lightness?: number;
  alpha?: number;
}): SassColor;
change(options: {
  hue?: number;
  whiteness?: number;
  blackness?: number;
  alpha?: number;
}):SassColor;
{void} # SassColor

# The compiler must emit a warning if a non-future deprecation is included here.

# `Options`

silenceDeprecations?: DeprecationOrId[];
fatalDeprecations?: (DeprecationOrId | Version)[];

declare module '../spec/js-api' {void};;break;;

interface Options<sync extends 'sync' | 'async'> {
futureDeprecations?: DeprecationOrId[];}

# `Logger`

interface Logger {

# `warn`

# Update the third sub-bullet of bullet two to read:

# If this warning is caused by behavior that used to be allowed but will be:

`options.deprecation` set $true '&&' set options.deprecationType > `deprecation`
then, set options.deprecation $false "options.deprecationType = undefined"

warn?(
  message: string,
  options: {
    deprecation: boolean;
    deprecationType?: Deprecation;
    span?: SourceSpan;
    stack?: string;
  }
): void;
        break;
  }
};
esac

# `Deprecations`

interface Deprecations {'void'}

'call-string': Deprecation<'call-string'>;

# `elseif`
$elseif: Deprecation<'elseif'>;

# `moz-document`
'moz-document': Deprecation<'moz-document'>;

# `relative-canonical`
'relative-canonical': Deprecation<'relative-canonical'>;

# `new-global`
'new-global': Deprecation<'new-global'>;

# `color-module-compat`
# behavior of their global counterparts for compatibility reasons.
'color-module-compat': Deprecation<'color-module-compat'>;

# `slash-div`
# Update the proposal for forward slash as a separator to say that it emits deprecation warnings with ID 'slash-div'
'slash-div': Deprecation<'slash-div'>;

# `bogus-combinators`
# Update the proposal for bogus combinators to say that it emits deprecation warnings with ID 'bogus-combinators'.

'bogus-combinators': Deprecation<'bogus-combinators'>;

# `strict-unary`
# Update the proposal for strict unary operators to say that it emits deprecation warnings with ID 'strict-unary'.
'strict-unary': Deprecation<'strict-unary'>;

# `function-units`
# Update the proposals for function units, random with units, and angle units to say that they emit deprecation warnings with ID 'function-units'.
'function-units': Deprecation<'function-units'>;

# `duplicate-var-flags`
# This deprecation was never explicitly listed in a proposal.
'duplicate-var-flags': Deprecation<'duplicate-var-flags'>;

# `user-authored`
# Used for deprecations coming from user-authored code.
'user-authored': Deprecation<'user-authored', 'user'>;

# `id`
# A kebab-case ID for this deprecation.
$id: id;

~~~~
# Deprecation Key

# 'active' - means this deprecation is currently enabled. `deprecatedIn` is
#  non-null and `obsoleteIn` is null.

# 'user' - means this deprecation is from user-authored code. Both `deprecatedIn`
#  and `obsoleteIn` are null.

# 'future' - means this deprecation is not yet enabled. Both `deprecatedIn` and
#  `obsoleteIn` are null.

# 'obsolete' - means this deprecation is now obsolete, as the feature it was for
#  has been fully removed. Both `deprecatedIn` and `obsoleteIn` are non-null.

$status: status;

# `description`

# A brief user-readable description of this deprecation.

$description?: string;

# `deprecatedIn`

# The compiler version this feature was first deprecated in.

# This is implementation-dependent, so versions are not guaranteed to be
# consistent between different compilers. For future deprecations, or those
# originating from user-authored code, this is null.

$ deprecatedIn: status extends 'future' | 'user' ? null : Version;

# `obsoleteIn`

# The compiler version this feature was fully removed in, making the deprecation
# obsolete.

# This is null for active and future deprecations.

$obsoleteIn: status extends 'obsolete' ? Version : null;

{'void'};

# `Version`

# A [semantic version] of the compiler.

export class Version {'void'}

# Constructor

# Creates a new `Version` with its `major`, `minor`, and `patch` fields set to the
# corresponding arguments.

$constructor(major: number, minor: number, patch: number);

# `major`

# The major version.

# This must be a non-negative integer.

$readonly major: number;

# `minor`

# The minor version.

# This must be a non-negative integer.

$readonly minor: number;

# `patch`

# The patch version.

# This must be a non-negative integer.

$readonly patch: number;

# `parse`

# Parses a string in the form "major.minor.patch" into a `Version`.

$static parse(version: string): Version;{}

# Top-Level Members

$declare module '../spec/js-api' {

# `deprecations`

# An object containing all of the deprecations.
}

$repeated string fatal_deprecation = 14;

$repeated string silence_deprecation = 15;

$repeated string future_deprecation = 16;

~~~~
# Embedded Protocol, CompileRequest
# `fatal_deprecation` - set of deprecation IDs to treat as fatal.

```
:not(.foo) {...}
.bar {@extend .foo}
:not(.foo):not(.bar) {...}

return "css"

.extender {
  @extend .target;
}
┌─$ extendee
.target {
        ...
}
```

# Extending a Selector

# This algorithm takes a selector list `extendee`, a simple selector `target`, and
# a selector list `extender` and returns a selector list.

# Intuitively, this returns the result of executing: 

.extender {@extend target}
┌─$ extendee {/* ... */}


# Its very easy to explicitly preserve the CSS behavior if its desired. A`CalculationInterpolation` will always produce a #`calc()` expression, so `calc(#{-5px})` can be used to force a calculation that wont return a number. In addition, the #`clamp()` syntax and `math.round()` function can be used to do build-time clamping and rounding if thats desired.

# Here are some alternatives we considered:

#  Re-parsing a calculation that contains interpolation once the interpolation
#  has been resolved, and using the result as a calculation object rather than
#  an unquoted string. For example, `calc(#{"1px + 2px"})` would return `3px`
#  rather than `calc(1px + 2px)`. However, doing another parse at
#  evaluation-time would add substantial complexity and some amount of runtime
#  overhead. The return-on-investment would also be inherently limited, since
#  we're planning on gradually transitioning users away from interpolation in
#  `calc()` anyway.

#  Treating interpolation another type of [`CalcValue`] that participates in the
#  normal parsing flow of a [`CalcArgument`]. This is a simpler and more
#  efficient method since it doesn't require parser lookahead, and it supports
#  common cases like `calc(#{$var} + 10%)` well. However, it doesn't support
#  cases like `calc(1px #{$op} 10%)` which are currently supported. This
#  backwards-incompatibility is likely to cause real user pain for a feature as
#  widely-used as `calc()`.

   [`CalcValue`]: #calcexpression
   [`CalcArgument`]: #calcexpression


# The grammar for this production is:

<x><pre>
**CalcExpression** ::= 'calc('¹ CalcArgument ')'
**ClampExpression** ::= 'clamp('¹ CalcArgument ( ',' CalcArgument ){2} ')'
**CalcArgument**²  ::= InterpolatedDeclarationValue† | CalcSum
**CalcSum**     ::= CalcProduct (('+' | '-')³ CalcProduct)\*
**CalcProduct** ::= CalcValue (('\*' | '/') CalcValue)\*
**CalcValue**   ::= '(' CalcArgument ')'
&#32;             | CalcExpression
&#32;             | ClampExpression
&#32;             | MinMaxExpression
&#32;             | FunctionExpression⁴
&#32;             | Number
&#32;             | Variable†
</pre></x>

# Types

# This proposal introduces a new value type known as a "calculation", with the
# following structure:

$ interface Calculation {
  name: string;
  arguments: CalculationValue[];
}

$ type CalculationValue =
  | Number
  | UnquotedString
  | CalculationInterpolation
  | CalculationOperation
  | Calculation;
  
$ interface CalculationInterpolation {
  value: string;
}

$ interface CalculationOperation {
  operator: '+' | '-' | '*' | '/';
  left: CalculationValue;
  right: CalculationValue;
}

> write `clamp(var(--three-args))` or `clamp(#{"1, 2, 3"})`
> `clamp()` = 3 $args
> if $declare 2 > mixin
> @mixin mixin1 {
>   color: red;
> }
> ...
> $a: meta.get-mixin(mixin1);
> ...
> @mixin mixin1 {
>   color: red;
> }
> ...
> $b: meta.get-mixin(mixin1);
>`$a != $b`
:q
~
# Although every aspect of the two mixins is the same. Because they refer to separate mixin declarations/objects.
# Embedded Protocol

# This document proposes adding a new value:
# A first-class mixin defined in the compiler. New `CompilerMixin`s may
# only be created by the compiler, but the host may pass `CompilerMixin`s
# back to the compiler as long as their IDs match IDs of mixins received
# by the host during that same compilation.
$ message CompilerMixin {
    # A unique ID for this mixin. The compiler is responsible for generating
    # this ID and ensuring its unique across all mixins passed to the host
    # for this compilation. Mandatory.
  uint32 id = 1;
}
# Syntax

<x><pre>
**ForRule**            ::= '@for' [PlainVariable][] FromDeclaration
&#32;                      (ToDeclaration | ThroughDeclaration) ForBlock
**FromDeclaration**    ::= 'from' Expression
**ToDeclaration**      ::= 'to' Expression
**ThroughDeclaration** ::= 'through' Expression
**ForBlock**           ::= '{' Statements '}'
</pre></x>

[PlainVariable]: ../variables.md #syntax
# In order to give properties dynamically-generated values, they had to be interpolated using `#{}`.
# Delimited `#{}`
# {} is allowed within strings limited containers to its own value

* `"a #{b} c"` would continue to produce `"a b c"`.
* `a#{b}c` would continue to produce `"abc"`.
* `a #{b}c` currently produces `"a bc"` but would produce `"a" "bc"`.
* `a#{b} c` currently produces `"ab c"` but would produce `"ab" "c"`.
* `a b#{c}d e` currently produces `"a bcd e"` but would produce `"a" "bcd" "e"`.
* `a #{b} c` currently produces `"a b c"` but would produce `"a" "b" "c"`.

# Although `font-stretch: $amount + -condensed` is legal, it's less clear and less pleasant than `font-stretch: #{$amount}-cond
# Right now when users want a slash delimiter for the values of properties such as `font`, and they want one of its values to be dynamic, by far the best way to do that is with interpolation: `font: 12pt/#{$var} sans-serif`.
# An expression like `a #{b} c` remains valid, and whether it's problematic in practice depends on things like whether its value is used in some string-specific way.
# Let S2 be the conversion of E to CSS. For example, suppose the expression in question is

`a #{b} + c`. S1 is `"a b + c"`, E is `"a" "bc"`, and S2 is `"a bc"`.
* If S1 and S2 arent semantically identical when interpreted as CSS, issue a
  warning. This means that `#{a} + b` would emit a warning since S1 is `"a + b"`
  but S2 is `"ab"`. However, `#{a} b c` would not emit a warning, since S1 and
  S2 are both `"a b c"`. Note that an expressions like `#{a} / b` *should not*
  emit a warning here, since we know that it will produce `a/b` under the new
  semantics.
* Otherwise, if E is not a string, set an "interpolated" flag on S1. If any
  operation is performed on S1 that wouldnt first convert it to a string, emit
  a warning.
  
# Old interpolation rules

# In service of determining how to go about deprecating the current semantics of
# SassScript interpolation, I want to precisely define them. For our purposes, we
# only care about *free interpolation*—that is, interpolation outside the context
# of a string or a special function (e.g. `calc()`) that's parsed like a string.

# The grammar for interpolation is straightforward. Note that the representation
# below elides much of the unrelated complexity of the SassScript grammar. The
# `Operation` and `UnaryOperation` productions should be understood to encompass
# all binary and unary operations supported by SassScript, except for `,` which is
# handled by the `CommaList` production. Note that this *includes* the implicit
# adjacency operator that normally creates space-separated lists. `Value` should
# be understood to encompass literals, parenthesized expressions, maps, and function calls.

```
CommaList      ::= Operation (',' Operation)*

Operation      ::= UnaryOperation ('•' UnaryOperation)*

UnaryOperation ::= '~'? Expression

Expression     ::= Value | Interpolation

Interpolation  ::= '#{' CommaList '}'
```

# The complexity lies in how this representation is evaluated. Because the
# semantics of string interpolation is already clear, I'll describe the evaluation
# of free interpolation in terms of its **equivalent string interpolation** (or
# "ESI" for short). To clarify that the strings returned by the ESI should be
# unquoted, I'll use backticks instead of double quotes to delimit them (so
# ``` `foo` ``` would have the same value as `unquote("foo")`).

# The ESI for an `Interpolation` production is, predictably,

``` `#{CommaList}` ```.

# Similarly, for a `UnaryOperation` with an operator and an `Interpolation`
# operand, the ESI is ``` `~` + ESI(Interpolation) ``` = ``` `~#{CommaList}` ```.
# If there was any whitespace in the source text between the operator and the
# `Interpolation`, a single space is also added after the operator in ESI.

| SassScript | ESI | CSS |
| --- | --- | --- |
| `-1` | `-1` | `-1` |
| `- 1` | `-1` | `-1` |
| `-#{1}` | ``` `-#{1}` ``` | `-1` |
| `- #{1}` | ``` `- #{1}` ``` | `- 1` |

# For an `Operation` production, all *adjacent* `UnaryOperation` sub-expressions
# that are *not* `Interpolation`s are parsed as normal, and interpolated into the
# ESI alongside the `Interpolation` subexpressions, separated by the operation in
# question. As with a `UnaryOperation`, a space will be included before or after
# the `Interpolation`s depending on whether whitespace appeared in the
# corresponding location in the source. This is also what allows interpolation in
# identifiers to work, since adjacent expressions are considered to implicitly have a space operator.

| SassScript | ESI | CSS |
| --- | --- | --- |
| `1 + 2 + 3` | `1 + 2 + 3` | `6` |
| `1 + #{2} + 3` | ``` `#{1} + #{2} + #{3}` ``` | `1 + 2 + 3` |
| `1 +#{2}+ 3` | ``` `#{1} +#{2}+ #{3}` ``` | `1 +2+ 3` |
| `1 + 2 + #{3}` | ``` `#{1 + 2} + #{3}` ``` | `3 + 3` |
| `#{1} + 2 + 3` | ``` `#{1 + 2} + #{3}` ``` | `3 + 3` |
| `1 #{2} 3` | ``` `#{1} #{2} #{3}` ``` | `1 2 3` |
| `a#{b}c` | ``` `#{a}#{b}#{c}` ``` | `abc` |

# Finally, `CommaList` productions behave almost the same as `Operation`s. The
# only difference is that if *only* the first `Operation` sub-expression is an
# `Interpolation`, the rest of the list isn't included in the interpolation.

| SassScript | ESI | CSS |
| --- | --- | --- |
| `1, #{2}, 3` | ``` `#{1}, #{2}, #{3}` ``` | `1, 2, 3` |
| `1, 2, #{3}` | ``` `#{1, 2}, #{3}` ``` | `1, 2, 3` |
| `#{1}, 2, 3` | ``` `#{1}`, 2, 3 ``` | `1, 2, 3` |
| `#{1}, #{2}, 3` | ``` `#{1}, #{2}, #{3}` ``` | `1, 2, 3` |
# CSS-equivalent values

# There are some expressions containing free interpolation whose values under both
# the old and the new semantics are CSS-equivalent strings. These include
# expressions where there are no operators (which also means no implicit list
# operators), as well as expressions with operators that will produce strings with identical semantics.

| SassScript | Old Value | New Value |
| --- | --- | --- |
| `#{a}` | ``` `a` ``` | ``` `a` ``` |
| `a#{b}c` | ``` `abc` ``` | ``` `abc` ``` |
| `+ #{a}` | ``` `+ a` ``` | ``` `+a` ``` |
| `/ #{a}` | ``` `/ a` ``` | ``` `/a` ``` |
| `1 / #{a}` | ``` `1 / a` ``` | ``` `1/a` ``` |
| `1 = #{a}` | ``` `1 = a` ``` | ``` `1=a` ``` |
| `-#{a}`* | ``` `-a` ``` | ``` `-a` ``` |
| `1-#{a}`* | ``` `1-a` ``` | ``` `1-a` ``` |

&ast; <sup>Because `-` is an identifier character, the `-` operator only
produces CSS-equivalent strings if it has no whitespace between it and the
interpolation.</sup>

# Different stringifications

# There are also expressions whose values have different **stringifications**
# under the old and new semantics. The stringification of an expression is the
# string representation of the result of its evaluation—for example, the
# stringification of `1 + 2` is ``` `3` ```. These expressions are very likely to
# change behavior; even if their values are immediately used in CSS, they'll have
# different meanings. This includes any operators that don't insert their own textual representation when operating on a string.

# The following operators and their inverses should produce warnings immediately.
Note: that *any expression* containing free interpolation whose new ESI contains
# these operators should have an immediate warning, even if they also include
# other operators.

| SassScript | Old Stringification | New Stringification |
| --- | --- | --- |
| `not #{a}` | ``` `not a` ``` | ``` `false` ``` |
| `1 and #{a}` | ``` `1 and a` ``` | ``` `a` ``` |
| `1 or #{a}` | ``` `1 or a` ``` | ``` `1` ``` |
| `1 == #{a}` | ``` `1 == a` ``` | ``` `false` ``` |
| `1 != #{a}` | ``` `1 != a` ``` | ``` `true` ``` |
| `1 > #{a}` | ``` `1 > a` ``` | error |
| `1 >= #{a}` | ``` `1 >= a` ``` | error |
| `1 < #{a}` | ``` `1 < a` ``` | error |
| `1 <= #{a}` | ``` `1 <= a` ``` | error |
| `1 + #{a}` | ``` `1 + a` ``` | ``` `1a` ``` |
| `1 * #{a}` | ``` `1 * a` ``` | error |
| `1 % #{a}` | ``` `1 % a` ``` | error |
| `- #{a}`* | ``` `- a` ``` | ``` `-a` ``` |
| `1 - #{a}`* | ``` `1 - a` ``` | ``` `1-a` ``` |
| `1- #{a}`* | ``` `1 - a` ``` | ``` `1-a` ``` |

&ast; <sup>Because `-` is an identifier character, the `-` operator only
produces non-equivalent strings if it has whitespace between it and the
interpolation.</sup>

# Adjacent expressions

# Another case needs to be considered here: expressions that are adjacent to interpolation without any whitespace intervening.

| SassScript | ESI | CSS |
| --- | --- | --- |
| `a#{b}` | ``` `a#{b}` ``` | `ab` |
| `$var#{b}` | ``` `#{$var}#{b}` ``` | `valueb` |
| `(1 + 2)#{b}` | ``` `#{1 + 2}#{b}` ``` | `3b` |
| `#{b}a` | ``` `#{b}a` ``` | `ba` |
| `#{b}$var` | ``` `#{b}#{$var}` ``` | `bvalue` |
| `#{b}(1 + 2)` | ``` `#{b}#{1 + 2}` ``` | `b3` |

# Under the new rules, some of these would be parsed as interpolated identifierswhile others would be parsed as space-separated lists.

| SassScript | New ESI | New Stringification |
| --- | --- | --- |
| `a#{b}` | ``` `a#{b}` ``` | `ab` |
| `$var#{b}` | ``` ($var `#{b}`) ``` | `value b` |
| `(1 + 2)#{b}` | ``` ((1 + 2) `#{b}`) ``` | `3 b` |
| `#{b}a` | ``` `#{b}a` ``` | `ba` |
| `#{b}$var` | ``` (`#{b}` $var) ``` | `bvalue` |
| `#{b}(1 + 2)` | ``` (`#{b}` (1 + 2)) ``` | `b3` |

# The second, third, fifth, and sixth examples should produce deprecation errors;the first and fourth should not, as their stringifications remain the same.

# Quoted strings

# There is one case where the new behavior differs from the old. It comes up when
# a dynamic value is included in an interpolated string without an explicit
# `#{}`—that is, for every location that doesn't have a `#{}` in the SassScript
# but does in the ESI. *If that value is a quoted string*, it will retain its
# quotes, where if it were explicitly interpolated it would lose them. For example:

| SassScript | ESI | Current CSS | CSS for ESI |
| --- | --- | --- | --- |
| `"foo" #{a}` | ``#{"foo"} #{a}`` | ``"foo" a`` | ``foo a`` |
| `$var: "foo"; $var + #{a}` | ``#{$var} + #{a}`` | ``"foo" + a`` | ``foo + a`` |

# What this means is that the ESI is no longer actually equivalent in all cases,
# because any of the newly interpolated values may or may not be a quoted string.
# We can detect this in simple cases like the first example, but not in general.

# Hopefully, not too many people are relying on cases we can't detect in practice.
# I think we should still move forward with the deprecation and accept that our
# heuristic isn't perfect, but I wanted to put this out there and get people's opinions.

# Same stringifications with different types

# Finally, there are expressions that produce values with the same
# stringifications but different types under the old and new semantics. In
# practice the only operators that fall into this category are the list operators,
# `,` and ` `. Note that we are once again examining the values of expressions
# rather than their stringifications. For clarity, I'll include parentheses around space-separated lists.

| SassScript | Old Value | New Value |
| --- | --- | --- |
| `#{a} #{b} #{c}` | ``` `a b c` ``` | `(`a` `b` `c`)` |
| `#{a}, #{b}, #{c}` | ``` `a, b, c` ``` | ``` `a`, `b`, `c` ``` |
| `1 2 #{a}` | ``` `1 2 a` ``` | ``` (1 2 `a`) ``` |
| `1, 2, #{a}` | ``` `1, 2, a` ``` | ``` 1, 2, `a` ``` |
| `1 -#{a}` | ``` `1 -a` ``` | ``` 1 `-a` ``` |

# Most of the time, these values are benign. As long as they're included directly
# in the stylesheet without any further manipulation, they'll have the same
# behavior under the old and new semantics. But if they are manipulated in a way
# that won't work for the new value, that's a problem and we need to issue a warning.

# Fortunately, the only way such a manipulation can occur is by passing the value
# to a built-in function that will treat it differently as a string than it will
# as a list. When passing an interpolation value produced via a list operator to
# such a function, the implementation should emit a deprecation warning. Of the
# canonical Sass functions, this includes:

* `unquote()`
* `quote()`
* `str-length()`
* The first or second argument of `str-insert()`
* `str-index()`
* The first argument of `str-slice()`
* `to-upper-case()`
* `to-lower-case()`
* `length()`
* The first argument of `nth()`
* The first argument of `set-nth()`
* `join()`
* The first or last argument of `append()`
* `zip()`
* The first argument of `index()`
* `list-separator()`
* `feature-exists()`
* `variable-exists()`
* `global-variable-exists()`
* `function-exists()`
* `mixin-exists()`
* `inspect()`
* `type-of()`
* The first argument of `call()`

# It's up to each implementation to determine whether to emit warnings for which user-defined functions.

# Any expression that produces a deprecation warning can be converted to an
# expression that will produce the same value and will work under the new
# semantics by taking the ESI, making the quotes explicit, and wrapping it in
`unquote()`—for example, `1 + #{2} + 3` can be converted to
`unquote("1 + #{2} + 3")`...
# When emitting deprecation messages, we should do this translation on the user's behalf.
## Syntax

<x><pre>
**FunctionRule** ::= '@function' [\<ident-token>][] ArgumentDeclaration '{' Statements '}'
</pre></x>
The grammar for this production is:

<x><pre>
**InterpolatedIdentifier** ::= ([\<ident-token>][`<ident-token>`] | '-'? Interpolation) ([Name](#consuming-a-name) | Interpolation)*
</pre></x>

No whitespace is allowed between components of an `InterpolatedIdentifier`.

* Let `components` be an empty list of strings and/or expressions.

* If the input starts with `-#{`, consume a single code point and add `"-"` to
  `components`.

* If the input starts with `#{`, consume an interpolation and add
  its expression to `components`.

* Otherwise, [consume an identifier](#consuming-an-identifier) and add its string
  to `components`.

* While the input starts with `#{`, a [name code point][], or `\`:

  * If the input starts with `#{`, consume an interpolation and add
    its expression to `components`.

  * Otherwise, [consume a name](#consuming-a-name) and add its string to
    `components`.

$ return `components`.
```
warn?(
  message: string,
  options: {
    deprecation: boolean;
    span?: SourceSpan;
    stack?: string;
  }
): void;

debug?(message: string, options: {span: SourceSpan}): void;

} 
interface Logger
```
# `separator`

[`internal`]: $list | -separator
[`internal`]: #internal

$constructor(
  contents: Value[] | List<Value>,
  options?: {
    separator?: ListSeparator;
    brackets?: boolean;
  }
);

$ constructor(options?: {separator?: ListSeparator; brackets?: boolean});

get separator(): ListSeparator;

        {'void'};

$const @Sass.lst = [ARGUMENTS{if func args is("ARRAY OR LIST") then let `contents`1<sup>st</sup> args}then -opt]:break; if 

    undefined
        elif throw "error contents[null]:_|_"
            -opt 2<sup>nd</sup> or {void} if undefined_vars_
                let | -opt | .seperator or `','`if undefined or $false
                    ['SET', 'CONTENTS']: `<internal>@Sass.lst</internal>` 
             -seperator {"set"};
    $return this

# Constructor

$constructor();
    {'void'}

<x><pre>
**MixinRule** ::= '@mixin' [\<ident-token>][] ArgumentDeclaration? '{' Statements '}'
</pre></x>

    # Syntax

<x><pre>
**IncludeRule**      ::= '@include' [NamespacedIdentifier][] ArgumentInvocation?
&#32;                    ContentBlock?
**ContentBlock**     ::= UsingDeclaration? '{' Statements '}'
**UsingDeclaration** ::= 'using' ArgumentDeclaration
</pre></x>
    
* Let `declaration` be `include`,`UsingDeclaration`,`ArgumentDeclaration`, or a declaration with no arguments if `include` has no `UsingDeclaration`.

> This means that `@include foo { ... }` and `@include foo using () { ... }`
> are interpreted identically.`load-css()` doesnt affect name resolution at all. Although it loads
> the module in an abstract sense, the user is only able to access the modules
> CSS, not any functions, mixins, or variables that it defines.
> Built-in modules will contain only the functions described above. They wont contain any other [members](#member)
> CSS, or extensions. New members may be added in the future, but CSS will not be added to existing modules.
> Both libraries define their own "gutters()" functions. But because the
> members are namespaced, theres no conflict and the user can use both at once.
> If one file imports another, either may refer to the others private members.
```
@use "bootstrap" as *;

.element {
  @include float-left;
}
@use "bootstrap";

.element {
  @include bootstrap.float-left;
  border: 1px solid bootstrap.theme-color("dark");
  margin-bottom: bootstrap.$spacer;
}
@use "bootstrap" as b;

.element {
  @include b.float-left;
}
```
_bootstrap.scss
$paragraph-margin-bottom: 1rem !default;
```
p {
  margin-top: 0;
  margin-bottom: $paragraph-margin-bottom;
}
```
_reboot.scss
```
@use "variables" as *;

  p {
    margin-top: 0;
    margin-bottom: $paragraph-margin-bottom;
  }

.extender {
  @extend .extendee;
}
```
>
> .foo { /* ... */ }
> .bar { @extend .foo }
>
> isnt identical (from a downstream users perspective) to
>
> 
> .foo, .bar { /* ... */ }
>
>
> $variable: value1;
> @if $condition {
>   $variable: value2;
> }
>
>
> without needing to use `!global`.
break;
> This function is private and may only be used within this module.
> @function -parse-gutters($short) {
>   ...
> }
>
> By contrast, this mixin is part of the modules public API.
> @mixin gutters($span) {
> But it can use private members within its own module.
>   $span: -parse-gutters($span);
> }
> 
> #susy {@include susy.gutters()}
> #bourbon {@include bbn.gutters()}
>
> Users can also import without a namespace at all, which lets them use the original member names.
> #compass {@include gutters()}
>
> @use "sass:color";
> @use "sass:map";
> @use "sass:math";
>
> @function luminance($color) {
>   $colors: (
>     'red': color.red($color),
>     'green': color.green($color),
>     'blue': color.blue($color)
>   );
>
>   @each $name, $value in $colors {
>     $adjusted: 0;
>     $value: $value / 255;
>
>     @if $value < 0.03928 {
>       $value: $value / 12.92;
>     } @else {
>       $value: ($value + .055) / 1.055;
>       $value: math.pow($value, 2.4);
>     }
>
>     $colors: map.merge($colors, ($name: $value));
>   }
>
>   @return map.get($colors, 'red') * .2126 +
>       map.get($colors, 'green') * .7152 +
>       map.get($colors, 'blue') * .0722;
> }
> The CSS from the print module will be nested within the media rule.
> @media print {
>   @include load-css("print");
> }
>
> These variables are set in the scope of susys main module.
> @include load-css("susy", $with: (
>   "columns": 4,
>   "gutters": 0.25,
>   "math": fluid
> ));
# `convert`
return `this`

constructor(
  value: number,
  unit?:
    | string
    | {
        numeratorUnits?: string[] | List<string>;
        denominatorUnits?: string[] | List<string>;
      }
);
* If `internal` is [unitless], return the result of:

  [unitless]: ../../types/number.md#

    new SassNumber(this.value, {
      numeratorUnits: newNumerators,
      denominatorUnits: newDenominators
    });
    
* Let `converter` be the [`internal`] field of the result of

  withUnits(0, {
    numeratorUnits: newNumerators,
    denominatorUnits: newDenominators,
  });
  _upstream.scss
a {b: c}
# In linked order
a {
  b: c;
}
a {
  b: c;
}
declare module '../spec/js-api/options' {
  interface Options<sync extends 'sync' | 'async'> {
    importers_new_?: (
      | Importer<sync>
      | FileImporter<sync>
      | NodePackageImporter
    )[];
  }
}
declare module '../spec/js-api/legacy/options' {
  export interface LegacySharedOptions<sync extends 'sync' | 'async'> {
    pkgImporter?: 'node';
  }
}

# Resolving package root values

# This algorithm takes a string `packagePath`, which is the root directory for a
# package, and `packageManifest`, which is the contents of that package's
# `package.json` file, and returns a file URL.

* Let `sassValue` be the value of `sass` in `packageManifest`.

* If `sassValue` is a relative path with an extension of `sass`, `scss` or
  `css`:

  * Return the canonicalized `file:` URL for `${packagePath}/${sassValue}`.

* Let `styleValue` be the value of `style` in `packageManifest`.

* If `styleValue` is a relative path with an extension of `sass`, `scss` or
  `css`:

  * Return the canonicalized `file:` URL for `${packagePath}/${styleValue}`.

* Otherwise return the result of [resolving a `file:` URL for extensions] with
  `packagePath + "/index"`.
  
$ message NodePackageImporter {
  string entry_point_url = 1;
}
# message CompileRequest {
  message Importer {
    oneof importer {
      NodePackageImporter node_package_importer = 4;
    }
  }
}
result: {
  stats: {
  [non-canonical-js]: #noncanonicalscheme

# Types

declare module '../spec/js-api/importer' {void}
interface FileImporter<sync extends 'sync' | 'async' = 'sync' | 'async'> {void}
interface Importer<sync extends 'sync' | 'async' = 'sync' | 'async'> {void}

> @use 'sass:list';
> @use 'sass:math';
>
> $ratio: math.div(12rem, 1px);
> $row: list.slash(span 3, 6);
>
> .grid .item1 {
# Its always safe to use `/` as a separator directly in a CSS property.
>   grid-row: span 2 / 7;
> }
> @use 'sass:math';
>
> $ratio: math.div(12rem, 1px);
>
> // As of phase 2, `/` is always parsed as a slash-separated list.
> $row: span 3 / 6;
>
> .grid .item1 {
>   grid-row: span 2 / 7;
> }
# `InterpolatedAnyValue`

# The `InterpolatedAnyValue` production is identical to CSS
[`<any-value>`][]

# except that after it parses `"#{"`, it parses an `Expression` which must be followed by `"}"`.

# Constructor

# Creates a Sass string:

* If the first argument is a string:
  * Let `text` be the first argument.
  * Let `options` be the second argument, or `{}` if undefined.

* Otherwise:
  * Let `text` be `""`.
  * Let `options` be the first argument, or `{}` if undefined.

* Let `quotes` be `options.quotes`, or `true` if undefined.

* Set [`internal`] to a Sass string with contents set to `text` and quoted set
  to `quotes`.

$return `this`.
constructor(
  text: string,
  options?: {
    quotes?: boolean;
  }
);

$constructor(options?: {/** @default true */ quotes?: boolean});

<x><pre>
**UnknownAtRule** ::= '@' [InterpolatedIdentifier][] InterpolatedValue?
&#32;                   ('{' Statements '}')?
</pre></x>
