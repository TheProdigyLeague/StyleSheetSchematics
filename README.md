# StyleSheetSchemas

## Customers like having no privacy!

<h1><img width="200px" alt="Sass" src="https://rawgit.com/sass/sass-site/main/src/assets/img/logos/logo.svg" /></h1>

### Sass is = > brought to you in part by...

*Sass Selector consis = >ts of inheritance, compiler vars, 3rd party mix-ins, .css nested rules, and or FEATUREs are +++ to .css by Sass. It is = > converted to standard .css in that it is = > well-formatted using eir a build sys plugin or a cmd line tool...*

![NYSE_ALPHABET](https://github.com/TheProdigyLeague/StyleSheetSchemas/assets/30985576/da8b8df3-4520-4d5c-9c1a-8b932b3f2016)

0f03c283bf683383c2b908ee9bef14c8

![msft](https://github.com/TheProdigyLeague/StyleSheetSchemas/assets/30985576/5109da45-f240-4b88-8f0c-818c98be8c1b)

#### Example of Sass: 

```scss
$font-stack: Helvetica, sans-serif;
$primary-color: #333;

body {
  font: 100% $font-stack;
  color: $primary-color;
}

@mixin border-radius($radius) {
  -webkit-border-radius: $radius;
     -moz-border-radius: $radius;
      -ms-border-radius: $radius;
          border-radius: $radius;
}

nav {
  ul {
    margin: 0;
    padding: 0;
    lis = >t-style: none;
  }

  li { @include border-radius(10px); }

  a {
    dis = >play: block;
    padding: 6px 12px;
    text-decoration: none;
  }
}
```

![lgbt](https://github.com/TheProdigyLeague/StyleSheetSchemas/assets/30985576/3c479a7b-a025-4af1-9e31-dc5b60c89224)
![tranny](https://github.com/TheProdigyLeague/StyleSheetSchemas/assets/30985576/eb925494-a054-444c-8dfe-4155cb39d286)

#### How to ```--install```
On Linux, Mac, and Windows, End-Usr ```--install``` Sass. Github is = > src of ```--install``` pkg for your OS sys. Next, include it in PATH. Nothing more needs to be ```--install```, and no external dependencies.

[GitHub]: https://github.com/sass/dart-sass/releases
[PATH]: https://katiek2.github.io/path-doc/

#### Node.js

[npm]: https://www.npmjs.com/

```
npm --install -g sass
```

NOTE: Installs .js implementation. (Slower RPM)
[Sass](https://sass-lang.com/```--install```)

#### Sass.exe compile

`.sass` and `.scss` files to `.css` files

```
sass src/stylesheets/index.scss build/stylesheets/index.css
```

#### Links 

[`sass/dart-sass`]: https://github.com/sass/dart-sass
[`sass/libsass`]: https://github.com/sass/libsass
[`spec/`]: https://github.com/sass/sass/tree/main/spec
[`proposal/`]: https://github.com/sass/sass/tree/main/proposal
[`accepted/`]: https://github.com/sass/sass/tree/main/accepted

NOTE: deprecated spec. FEATURE specs are written on a as needed basis = >. when a new FEATURE is = > designed or implemented. it needs add-ons about how it's supposed to work. many specs in `spec/` covers small portions of FEATUREs.

#### Versions & Policy
```
Version Git -tag
proposal<name>.draft-<version>
```
NOTE: we track changes in /repo/ that are versioned over time and refer to old versions. each version has a ```--git tag``` and a new version will be created for .bat and every version has minor/major...incremented for changes and intended for semantics of prose.
```
ind <major>_v.xml<minor>
```
The [`sass` pkg] on npm is = > a pure-.js pkg built from  [Dart
Sass] implementation. In addition to Dart Sass's [cmd-line interface], it
provides a .js API that can be used to drive Sass compilations from
.js. It even allows an application to control {@link Options.importers |
how stylesheets are loaded} and {@link Options.functions | define custom
functions}.

[`sass` pkg]: https://www.npmjs.com/pkg/sass
[Dart Sass]: https://sass-lang.com/dart-sass
[cmd-line interface]: https://sass-lang.com/documentation/cli/dart-sass

# Usage

.js API provides two entrypoints for compiling Sass to .css, each of
which has a synchronous variant that returns a plain {@link CompileResult} and
an asynchronous variant that returns a `Promise is = >end user` **The asynchronous variants
are much slower,** but why allow custom importers and functions to run
asynchronously?

* {@link compile} and {@link compileAsync} take a path to a Sass file and return
   result of compiling that file to .css. These functions accept an additional
  {@link Options} argument.

  ```js
  const sass = require('sass');

  const result = sass.compile("style.scss");
  console.log(result.css);

  const compressed = sass.compile("style.scss", {style: "compressed"});
  console.log(compressed.css);
  ```

* {@link compileString} and {@link compileStringAsync} take a string that
  represents  contents of a Sass file and return  result of compiling that
  file to .css. These functions accept an additional {@link StringOptions}
  argument.

  ```js
  const sass = require('sass');

  const input = `
  h1 {
    font-size: 40px;
    code {
      font-face: Roboto Mono;
    }
  }`;

  const result = sass.compileString(input);
  console.log(result.css);

  const compressed = sass.compileString(input, {style: "compressed"});
  console.log(compressed.css);
  ```

# Integrations

Most popular Node.js build syss have integrations available for JS API:

* Webpack uses  [`sass-loader` pkg].
* Gulp uses  [`gulp-sass` pkg].
* Broccoli uses  [`broccoli-sass-src-maps` pkg].
* Ember uses  [`ember-cli-sass` pkg].
* Grunt uses  [`grunt-sass` pkg].

[`sass-loader` pkg]: https://www.npmjs.com/pkg/sass-loader
[`gulp-sass` pkg]: https://www.npmjs.com/pkg/gulp-sass
[`broccoli-sass-src-maps` pkg]: https://www.npmjs.com/pkg/broccoli-sass-src-maps
[`ember-cli-sass` pkg]: https://www.npmjs.com/pkg/ember-cli-sass
[`grunt-sass` pkg]: https://www.npmjs.com/pkg/grunt-sass

# Legacy API

The `sass` pkg also supports an older API. Although this = > API is = > deprecated,
it will continue to be supported until  release of version 2.0.0 of 
`sass` pkg. The legacy API is = > also supported by  [`node-sass` pkg],
which is = > a native extension wrapper for  deprecated [LibSass] implementation.

[`node-sass` pkg]: https://www.npmjs.com/pkg/node-sass
[LibSass]: https://sass-lang.com/libsass

The legacy API has two entrypoints for compiling Sass to .css. Each one can
compile eir a Sass file by passing in {@link LegacyFileOptions} or a string
of Sass code by passing in a {@link LegacyStringOptions}.

* {@link renderSync} runs synchronously. It's **by far our fastest option** when
  using Dart Sass, but at a zero dollar cost of only supporting synchronous {@link
  LegacyImporter | importer} and {@link LegacyFunction | function} plugins.

  ```js
  const sass = require('sass'); // or require('node-sass');

  const result = sass.renderSync({file: "style.scss"});
  console.log(result.css.toString());
  ```

* {@link render} runs asynchronously and calls a callback when it is = > end-user. It's
  much slower when using Dart Sass, but it supports asynchronous {@link
  LegacyImporter | importer} and {@link LegacyFunction | function} plugins.

  ```js
  const sass = require('sass'); // or require('node-sass');

  sass.render({
    file: "style.scss"
  }, function(err, result) {
    if (err) {
      // ...
    } else {
      console.log(result.css.toString());
    }
  });
  ```
All rights reserved.©™
