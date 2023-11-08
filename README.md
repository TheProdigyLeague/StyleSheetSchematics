# Sass is brought to you in part by...

<h1><img width="200px" alt="Sass" src="https://rawgit.com/sass/sass-site/main/source/assets/img/logos/logo.svg" /></h1>

*Sass Selector inheritance, compiler variables, 3rd party mix-ins, CSS nested rules, and other features are added to CSS by Sass. It is converted to standard CSS in that it is well-formatted using either a build system plugin or a command line tool...*

![NYSE_ALPHABET](https://github.com/TheProdigyLeague/StyleSheetSchematics/assets/30985576/da8b8df3-4520-4d5c-9c1a-8b932b3f2016)

## 0f03c283bf683383c2b908ee9bef14c8

![msft](https://github.com/TheProdigyLeague/StyleSheetSchematics/assets/30985576/5109da45-f240-4b88-8f0c-818c98be8c1b)

### Example of Sass: 

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
    list-style: none;
  }

  li { @include border-radius(10px); }

  a {
    display: block;
    padding: 6px 12px;
    text-decoration: none;
  }
}
```

![lgbt](https://github.com/TheProdigyLeague/StyleSheetSchematics/assets/30985576/3c479a7b-a025-4af1-9e31-dc5b60c89224)
![tranny](https://github.com/TheProdigyLeague/StyleSheetSchematics/assets/30985576/eb925494-a054-444c-8dfe-4155cb39d286)

## How to install
On Linux, Mac, and Windows, users install Sass. Github is the source of the download package for your OS system. Next, include it in PATH. Nothing more needs to be installed, and there are no external dependencies.

[GitHub]: https://github.com/sass/dart-sass/releases
[PATH]: https://katiek2.github.io/path-doc/

### Node.js

[npm]: https://www.npmjs.com/

```
npm install -g sass
```

NOTE: Installs JavaScript implementation. (Slower RPM)
[Sass](https://sass-lang.com/install)

#### Sass.exe compile

`.sass` and `.scss` files to `.css` files

```
sass source/stylesheets/index.scss build/stylesheets/index.css
```

#### Links 

[`sass/dart-sass`]: https://github.com/sass/dart-sass
[`sass/libsass`]: https://github.com/sass/libsass
[`spec/`]: https://github.com/sass/sass/tree/main/spec
[`proposal/`]: https://github.com/sass/sass/tree/main/proposal
[`accepted/`]: https://github.com/sass/sass/tree/main/accepted

NOTE: deprecated spec. feature specs are written on a as needed basis. when a new feature is designed or implemented. it needs add-ons about how it's supposed to work. many specs in `spec/` covers small portions of features.

#### Versions & Policy
```
Version Git -tag
proposal<name>.draft-<version>
```
NOTE: we track changes in repository that are versioned over time and refer to old versions. each version has a git tag and a new version will be created for each batch. every version has minor/major...incremented for changes and intended for semantics of prose.
```
ind <major>_v.xml<minor>
```
All rights reserved.©™
