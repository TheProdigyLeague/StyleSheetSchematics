srcURL="https://github.com/ibrahimBeladi"
.f-grow-36 {
  flex: 0 0 36 * 2.083333333333% !important;
  max-width: 36 * 2.083333333333% !important;
}
.f-grow-36 {
  flex: 0 0 74.% !important;
  max-width: 74.% !important;
}
# 36 * 2.083333333333% = 74.%, wrong calculation and compilation

$ node --version
v19.7.0
$ npx sass --version
1.63.2 compiled with dart2js 3.0.3
$ cat test.scss
.f-grow-36 {
  flex: 0 0 36 * 2.083333333333% !important;
  max-width: 36 * 2.083333333333% !important;
}
$ npx sass test.scss
.f-grow-36 {
  flex: 0 0 75% !important;
  max-width: 75% !important;
} # issue with @nuxtjs/vuetify pkg using "sass": "1.32.13" override sass pkg #1312

"overrides": {
    "@nuxtjs/vuetify": {
      "sass": "1.33" 
    }
  }
esac

srcURL="https://github.com/rwasef1830"
$bootstrap-overrides: (
    primary: green
);
@use "variables";
@use "lib/bootstrap/scss/bootstrap" with (variables.$bootstrap-overrides);
@use "variables";
@include meta.load-css("lib/bootstrap/scss/bootstrap", variables.$bootstrap-overrides);
# I need to refer to bootstrap inside this file so I go ahead and use it, knowing that
# the include must come first because you can't configure a module except the first time it's loaded
# and that meta.load-css and use won't load modules loaded by each other multiple times.
@use "lib/bootstrap/scss/bootstrap";
@use "sass:meta";
@use "variables";
@include meta.load-css("lib/bootstrap/scss/bootstrap", variables.$bootstrap-overrides);
@use "bootstrap-loader";
@use "lib/bootstrap/scss/bootstrap";
@use "sass:meta";
@use "variables";
@include meta.load-css("../../../WebFramework/wwwroot/lib/bootstrap/scss/bootstrap", variables.$bootstrap-overrides);
@forward "../../../WebFramework/wwwroot/lib/bootstrap/scss/bootstrap";
@use "bootstrap-loader" as bootstrap;
// _wrapper-framework.scss
@forward 'bootstrap';

// Use bootstrap variables/mixins here.

// main.scss
@use 'wrapper-framework' with (
  $primary: green
);

srcURL="https://github.com/sysmat"
$primary-500: #E65A00;
$primary-600: #C54100;
$primary-700: #A52D00;

$ import '.Pico' source='code'
@import "./node_modules/@picocss/pico/scss/pico.scss";
Unexpected exception:
Invalid argument(s): If parsedAsCustomProperty is true, value must contain a SassString (was `"Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"` of type SassList).

node_modules\sass\sass.dart.js 1267:17   Object.wrapException
node_modules\sass\sass.dart.js 1281:15   Object.throwExpression
node_modules\sass\sass.dart.js 7919:15   Object.ModifiableCssDeclaration$
node_modules\sass\sass.dart.js 64390:70  _EvaluateVisitor.visitCssDeclaration$1
node_modules\sass\sass.dart.js 37073:22  ModifiableCssDeclaration.accept$1$1
node_modules\sass\sass.dart.js 37076:19  ModifiableCssDeclaration.accept$1
node_modules\sass\sass.dart.js 66207:40  _EvaluateVisitor_visitCssStyleRule__closure.call$0
node_modules\sass\sass.dart.js 64606:25  _EvaluateVisitor._withStyleRule$1$2
node_modules\sass\sass.dart.js 64611:19  _EvaluateVisitor._withStyleRule$2
node_modules\sass\sass.dart.js 66198:10  _EvaluateVisitor_visitCssStyleRule_closure.call$0

cd $(mktemp --dir)
npm init # accept everything as default
npm install sass @picocss/pico ts-node
# pkg.json
"scripts": {
  "test": "ts-node index.ts",
  "sass": "sass index.scss"
}

import * as sass from "sass";
const css = sass.compile("./index.scss");
console.log(css.css);

npm run test # compiles with JS API
npm run sass # compiles with CLI

"@picocss/pico":"2.0.0-alpha1"
esac
srcURL="https://github.com/akicho8"
cat <<EOF | sass --stdin --indented
:root
  --foo: white // comment1
body
  background-color: black // comment2
  color: var(--foo)
EOF
:root {
  --foo: white // comment1;
}

body {
  background-color: black;
  color: var(--foo);
}

--foo: white; # expected
--foo: white # comment

$ sass --version
1.63.2 compiled with dart2js 3.0.3

@use "./node_modules/@picocss/pico/scss/pico.scss" with ( // overwrite pico
    $primary-500: #E65A00,
    $primary-600: #C54100,
    $primary-700: #A52D00);
$ npm -run -dev
"sass": "1.65.1" Error: This variable was not declared with !default in the @used module
srcURL="https://stackblitz.com/edit/vitejs-vite-pico?file=pico.scss"
srcURL="https://git-scm.com/docs/git-bisect"
# write script repo issue git-bisect on picocss
esac

srcURL="https://github.com/JeffreyHuig"
$ --watch
ERR Unexpected exception:
FileSystemException: Directory watcher closed unexpectedly, path = 'C:\xampp\htdocs\Portfolio_Bijwerking_Kennis\css'

dart:isolate _RawReceivePortImpl._handleMessage
try --poll
esac
srcURL="https://github.com/jerivas"
# expose calcs in js api
srcURL="https://github.com/sass/dart-sass/pull/1988/commits/6b3b5b80708ce47fdc5af4b4611aa4239c497ad4"
# assert calcs in other types
srcURL="https://github.com/sass/dart-sass/pull/1988/commits/859069e7e0be27a5caf523faf819f408efef97e1"
# merged js api calcs
# sass api
srcURL="https://github.com/sass/dart-sass/blob/13c9fb3c9d97d4d9582ccd33689111d74024261d/tool/grind/double_check.dart#L36-L47"
 for (var dir in [ 
   ".", 
   ...Directory("pkg").listSync().map((entry) => entry.path) 
 ]) { 
   var pubspec = Pubspec.parse(File("$dir/pubspec.yaml").readAsStringSync(), 
       sourceUrl: p.toUri("$dir/pubspec.yaml")); 
  
   var package = await client.packageInfo(pubspec.name); 
   if (pubspec.version == package.latestPubspec.version) { 
     fail("${pubspec.name} ${pubspec.version} has already been released!"); 
   } 
 } 
srcURL="https://github.com/sass/dart-sass/actions/runs/6254921481/job/16983359566?pr=2090"

esac
~

srcURL="https://github.com/danielbaars"
# @container (min-width: {$breakpoint}) { ... }
.item-list {
  container-type: inline-size;
  display: flex;
  flex-flow: row wrap;
  gap: 1rem;
}
.item-list__item {
  flex: 0 0 auto;
  width: 100%;
}
@container (min-inline-size: 45em) {
  .item-list__item {
    width: 50%;
  }
}
srcURL="https://github.com/ntkme"
# fix eprotofy SassCalcs.clamp
$ sass --version
1.66.2-dev
$ time sass bootstrap/scss:css
sass bootstrap/scss:css  0.44s user 0.08s system 145% cpu 0.353 total
srcURL="https://github.com/rails/dartsass-rails" # override print for dart vm newline StringBuffer stdout.write - call buffer writeIn

Deprecation Warning: Passing percentage units to the global abs() function is deprecated.
In the future, this will emit a CSS abs() function to be resolved by the browser.
To preserve current behavior: math.abs(100%)
To emit a CSS abs() now: abs(#{100%})
More info: https://sass-lang.com/d/abs-percent

   ╷
1  │ ┌ @import "mixins/banner";
2  │ │ @include bsBanner("");
3  │ │ 
4  │ │ 
5  │ │ // scss-docs-start import-stack
6  │ │ // Configuration
7  │ │ @import "functions";
8  │ │ @import "variables";
9  │ │ @import "variables-dark";
10 │ │ @import "maps";
11 │ │ @import "mixins";
12 │ │ @import "utilities";
13 │ │ 
14 │ │ // Layout & components
15 │ │ @import "root";
16 │ │ @import "reboot";
17 │ │ @import "type";
18 │ │ @import "images";
19 │ │ @import "containers";
20 │ │ @import "grid";
21 │ │ @import "tables";
22 │ │ @import "forms";
23 │ │ @import "buttons";
24 │ │ @import "transitions";
25 │ │ @import "dropdown";
26 │ │ @import "button-group";
27 │ │ @import "nav";
28 │ │ @import "navbar";
29 │ │ @import "card";
30 │ │ @import "accordion";
31 │ │ @import "breadcrumb";
32 │ │ @import "pagination";
33 │ │ @import "badge";
34 │ │ @import "alert";
35 │ │ @import "progress";
36 │ │ @import "list-group";
37 │ │ @import "close";
38 │ │ @import "toasts";
39 │ │ @import "modal";
40 │ │ @import "tooltip";
41 │ │ @import "popover";
42 │ │ @import "carousel";
43 │ │ @import "spinners";
44 │ │ @import "offcanvas";
45 │ │ @import "placeholders";
46 │ │ 
47 │ │ # Helpers
48 │ │ @import "helpers";
49 │ │ 
50 │ │ # Utilities
51 │ │ @import "utilities/api";
52 │ └ # scss-docs-end import-stack
   ╵
    scss/bootstrap.scss 1:1             divide()
    scss/mixins/_grid.scss 59:12        row-cols()
    scss/mixins/_grid.scss 85:13        @content
    scss/mixins/_breakpoints.scss 68:5  media-breakpoint-up()
    scss/mixins/_grid.scss 72:5         make-grid-columns()
    scss/_grid.scss 38:3                @import
    scss/bootstrap.scss 20:9            root stylesheet

a {
  b: c;
}

d {
  e: calc(abs(100%));
}
Deprecation Warning: Passing percentage units to the global abs() function is deprecated.
In the future, this will emit a CSS abs() function to be resolved by the browser.
To preserve current behavior: math.abs(100%)
To emit a CSS abs() now: abs(#{100%})
More info: https://sass-lang.com/d/abs-percent

  ╷
1 │ ┌ a {
2 │ │   b: c;
3 │ │ }
4 │ │ 
5 │ │ d {
6 │ │   e: calc(abs(100%));
7 │ └ }
  ╵
    a.scss 1:1  root stylesheet
$dispatcher.sendError(hanleError(error, stackTrace));
require 'sass-embedded'

def try
  puts yield
rescue StandardError => e
  puts e
end
diff --git a/lib/src/embedded/isolate_dispatcher.dart b/lib/src/embedded/isolate_dispatcher.dart
index 044e2b9c..b58732f6 100644
--- a/lib/src/embedded/isolate_dispatcher.dart
+++ b/lib/src/embedded/isolate_dispatcher.dart
@@ -118,7 +118,9 @@ class IsolateDispatcher {
         # isolate, so we just send them as-is and close out the underlying
         # channel.
         sendError(compilationId, error);
-        _channel.sink.close();
+        Timer(Duration(milliseconds: 100), () =>
+          _channel.sink.close()
+        );
       } else {
         _handleError(error, stackTrace);
       } # slow sink close emulated patch produce
fn = lambda do |_args|
  # this is an invalid calculation that will trigger a protocol error
  Sass::Value::Calculation.send(:new, 'foo', [Sass::Value::Number.new(1)])
end

try do
  Sass.compile_string('a {b: foo()}',
                      functions: { 'foo()': fn }).css
end

try do
  Sass.compile_string('a {b: c}').css
end
~
srcURL="https://github.com/nex3"
# bump sass_api version
# scss nesting
# load http:// absolutes from base import
$ update .proto version -embed -host -node
 run: |
          echo "version=${GITHUB_REF##*/}" | tee --append "$GITHUB_OUTPUT"
          echo "protocol_version=$(curl https://raw.githubusercontent.com/sass/sass/HEAD/spec/EMBEDDED_PROTOCOL_VERSION)" | tee --append "$GITHUB_OUTPUT"
.github/workflows/ci.yml
  deploy_website:
    name: "Deploy sass-lang.com"
    runs-on: ubuntu-latest
    needs: [bootstrap, bourbon, foundation, bulma]
    needs: [deploy_npm]
    if: "startsWith(github.ref, 'refs/tags/') && github.repository == 'sass/dart-sass'"
    steps:
      - uses: actions/checkout@v3
        with:
          repository: sass/sass-site
          token: ${{ secrets.SASS_SITE_TOKEN }}

      - name: Get version
        id: version
        run: echo "version=${GITHUB_REF##*/}" | tee --append "$GITHUB_OUTPUT"

      - name: Update Dart Sass version
        run: npm install sass@${{ steps.version.outputs.version }}

      - uses: EndBug/add-and-commit@v9
        with:
          author_name: Sass Bot
esac
            jq --arg version ^${{ steps.version.outputs.version }} '
              .devDependencies.sass |= $version
            ' > package.json.tmp
          mv package.json.tmp package.json # commit lock file 
          npm -update sass
esac
# supp add calcs func
# supp rel col syntax
lib/src/func/col.dart
lib/src/val/col.dart
lib/src/val/col/space/lch.dart
# for lch() test
~
srcURL="https://github.com/GoodWine"
/dart-sass/lib/src
/dart-sass/test
/dart-sass/tool 
# change terms - js/Node.js
srcURL="https://github.com/sass/dart-sass/actions/runs/5814287620/job/15763975259"
srcURL="https://github.com/sass/dart-sass/actions/runs/5814783988/job/15765463125"
# stuck runner sys op
lib/src/functions/color.dart # lab() tests
 [...var initial, SassString(hasQuotes: false, :var text)] => switch (
            text.split('/')) {
          [_] => (input, null),
          [var channel3 && 'none', var alpha] ||     value = max * number.value / 100;
  } else {
    throw SassScriptException(
        '\$$name: Expected $number to have no units or "%".');
        '\$$name: Expected $number to have unit "%" or no units.');
  }

  return value.clamp(0, max).toDouble();
esac

srcURL="https://github.com/jathak"
# Googl Sass dev

srcURL="https://github.com/amyipdev"
sass scss/custom.scss:assets/css/custom_bootstrap.css 
TypeError: String can not be coerced into Integer
  Use --trace for backtrace.
$ --trace 
/usr/share/gems/gems/sass-3.7.4/lib/sass/script/value/number.rb:409:in '-': nil can not be coerced into Integer (TypeError)

      (num1 - num2).abs < epsilon
              ^^^^
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/value/number.rb:409:in 'basically_equal?'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/value/number.rb:403:in 'basically_equal?'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/value/number.rb:226:in 'eql?'
        from /usr/share/ruby/set.rb:404:in 'include?'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:54:in 'block in _perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:52:in 'map'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:52:in '_perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/node.rb:50:in 'perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:53:in 'block in _perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:52:in 'map'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:52:in '_perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/node.rb:50:in 'perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:53:in 'block in _perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:52:in 'map'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/map_literal.rb:52:in '_perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/node.rb:50:in 'perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/funcall.rb:182:in 'perform_arg'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/funcall.rb:129:in 'block in _perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/funcall.rb:129:in 'each'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/funcall.rb:129:in 'each_with_index'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/funcall.rb:129:in 'each'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/funcall.rb:129:in 'map'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/funcall.rb:129:in '_perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/script/tree/node.rb:50:in 'perform'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:478:in 'visit_variable'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:36:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:158:in 'block in visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:79:in 'block in with_base'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:135:in 'with_frame'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:79:in 'with_base'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:158:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:325:in 'block (2 levels) in visit_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:325:in 'map'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:325:in 'block in visit_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:88:in 'block in with_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:135:in 'with_frame'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:88:in 'with_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:322:in 'visit_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:36:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:158:in 'block in visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:79:in 'block in with_base'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:135:in 'with_frame'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:79:in 'with_base'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:158:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:325:in 'block (2 levels) in visit_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:325:in 'map'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:325:in 'block in visit_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:88:in 'block in with_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:135:in 'with_frame'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:88:in 'with_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:322:in 'visit_import'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:36:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:158:in 'block in visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:79:in 'block in with_base'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:135:in 'with_frame'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/stack.rb:79:in 'with_base'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:158:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:52:in 'block in visit_children'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:52:in 'map'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:52:in 'visit_children'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:167:in 'block in visit_children'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:179:in 'with_environment'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:166:in 'visit_children'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:36:in 'block in visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:186:in 'visit_root'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/base.rb:36:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:157:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/visitors/perform.rb:10:in 'visit'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/root_node.rb:36:in 'css_tree'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/tree/root_node.rb:29:in 'render_with_sourcemap'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/engine.rb:389:in '_render_with_sourcemap'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/engine.rb:307:in 'render_with_sourcemap'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/exec/sass_scss.rb:387:in 'run'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/exec/sass_scss.rb:63:in 'process_result'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/exec/base.rb:50:in 'parse'
        from /usr/share/gems/gems/sass-3.7.4/lib/sass/exec/base.rb:18:in 'parse!'
        from /usr/share/gems/gems/sass-3.7.4/bin/sass:13:in '<top (required)>'
        from /usr/bin/sass:25:in 'load'
        from /usr/bin/sass:25:in '<main>'
        # change path
esac

# 1.65.0

# All functions defined in CSS Values and Units 4 are now parsed as calculation
  objects: `round()`, `mod()`, `rem()`, `sin()`, `cos()`, `tan()`, `asin()`,
  `acos()`, `atan()`, `atan2()`, `pow()`, `sqrt()`, `hypot()`, `log()`, `exp()`,
  `abs()`, and `sign()`.

# Deprecate explicitly passing the `%` unit to the global `abs()` function. In
future releases, this will emit a CSS abs() function to be resolved by the browser. This deprecation is named `abs-percent`

esac

srcURL="https://github.com/MahmudulHassan5809"
> insta-job-hub@1.0.0 sass:autoprefixer /home/mahmudul/Desktop/Projects/personal/frontend-admin
> postcss public/css*.css --use autoprefixer -d public/css
| Sass is watching for changes. Press Ctrl-C to stop.

/home/madhmudul/Desktop/Projects/personal/frontend-admin/node_modules/sass/sass.dart.js:5325
    throw error;
    ^
|
|   TypeError: t1.call$1 is not a function
'__js_helper$_message':'t1.call$1 is not a function',
_method: 'call$1',
_receiver: undefined,
'$thrownJsError': <ref *1>

$ echo fs.inotify.max_user_watches=393210 \
| sudo tee -a /etc/sysctl.conf \
&& sudo sysctl -p
# chokidar/libs/fs
esac
srcURL="https://github.com/medarob/" # two maps 

($colors and $margin) .scss
# syntax
--session-sessioninfo-color: 
#{map.get($colors,"schwarzblau90")};
srcURL="joeframbach"
<!doctype html>
<html>
  <script type="module">
    import * as sass from 'https://jspm.dev/sass';
  
    console.log(sass.compileString(`
      @use "scheme://Name/Path";
    `, {
      importers: [{
        canonicalize(url) {
          console.log(url); // scheme://name/Path
          return new URL(url);
        },
        load(canonicalUrl) {
          console.log(canonicalUrl);
          { pathname: "//name/Path" }
          return {
            contents: `body {content: '${canonicalUrl}'}`,
            syntax: 'scss'
          };
        }
      }]
    }));
  </script>
</html>
void parse(String url) {
  print("$url -> ${Uri.parse(url)}");
}
void main() {
  parse("Scheme:Host/Path");
  parse("Scheme://Host/Path");
  parse("Scheme:User@Host/Path");
  parse("Scheme://User@Host/Path");
}
# Scheme:Host/Path -> scheme:Host/Path
# Scheme://Host/Path -> scheme://host/Path
# Scheme:User@Host/Path -> scheme:User@Host/Path
# Scheme://User@Host/Path -> scheme://User@host/Path
srcURL="https://api.dart.dev/stable/2.14.2/dart-core/Uri/host.html"
new URL('http://Foo/bar').host # -> 'foo' (lowercase), not 'Foo'
esac
~ "pubspec.yaml"
  charcode: ^1.2.0
  cli_repl: ^0.2.1
  collection: ^1.16.0
-  http: ">=0.13.3 <1.0.0"
+  http: "^1.1.0"
  js: ^0.6.3
  meta: ^1.3.0
  node_interop: ^2.1.0
esac

srcURL="https://github.com/connorskees"  
# deprecated functions "linear gradiant" unknown to sass eval as result. implemented by individual user

SRCURL="https://quentiumYT"
@use 'sass:math';

@function rem($value, $base: 16) {
	@return math.div($value, $base) * 1rem;
}
# function rem overlap
esac
srcURL="amxmln"
@use 'sass:math';

@function rem($pixels) {
  @if type-of($pixels) == 'number' and not unitless($pixels) {
    @return math.div(math.div($pixels, $pixels * 0 + 1), 16) * 1rem;
  }

  @return math.div($pixels, 16) * 1rem;
}

$max-content-width: rem(1296);
Error: 2 arguments required, but only 1 was passed.
   ╷
11 │ $max-content-width: rem(1296);
   │                     ^^^^^^^^^
   ╵
  src/assets/styles/helpers.scss 11:21  @use
  esac
  
srcURL="merwan7"
# Rem Pixels
@function rem($pixels, $context: 16) {
  @return #{math.div($pixels, $context)}rem;
}
.some-selector {
  padding: rem(24);
} # sass@1.65.0
[sass] 2 arguments required, but only 1 was passed.
   ╷
11 │   padding: rem(24);
   │            ^^^^^^^
   ╵
esac

srcURL="https://stackblitz.com/edit/vitejs-vite-xuicb1?file=src%2FApp.scss"

@function _rem($value) {
  @return (math.div($value, 16px)) * 1rem
}

.test {
  font-size: _rem(32px);
} # can't use name _rem
@use "sass:math";

@function _rem($value) {
  @return (math.div($value, 16px)) * 1rem;
}

.test {
  font-size: _rem(32px);
}
.test {
  font-size: 2rem;
}
# toRem mixins.scss
@use "sass:math";

# the name can be anything as long as it starts with underscore 
@function _rem($value) {
  @return (math.div($value, 16px)) * 1rem
}
# input.scss
@use "./mixins.scss" as *; #  (!) imported from another file

$size: _rem(16px);

.test {
  width: $size * 2;
}
Error: Undefined operation "_rem(16px) * 2".
  ╷
6 │   width: $size * 2;
  │          ^^^^^^^^^
  ╵
# rem() stable release mdn experimental technology api
srcURL="https://developer.mozilla.org/en-US/docs/Web/CSS/rem"
$ sass --version
1.66.0
srcURL="https://github.com/sass/dart-sass/pull/2067/commits/86a2f42a40da875b3723fd0b8da4494301c6754b"
srcURL="https://github.com/sass/dart-sass/pull/2067/commits/458852dfd3714c8cfa15154be9e07a538d45aef9"
srcURL="https://github.com/sass/dart-sass/pull/2067/commits/a6a06b7eecf46e1ff8c378c6a262612b1008524f"
$ wrapJSExceptions() -flow "dart-lang/sdk#53105"
`pubspec.yaml`
dev_dependencies:
  analyzer: ">=5.13.0 <7.0.0"
  archive: ^3.1.2
  cli_pkg: ^2.4.4
  crypto: ^3.0.0
  dart_style: ^2.0.0
  dartdoc: ^6.0.0
esac
$ sass --version
1.66.1
————————————————————————————
srcURL="https://github.com/notatoad"
$ --git -cp -sass '&&' -dart-sass | "/usr/local/bin" in `PATH`
| "usr/local/bin/src/dart:" ERR not found
srcURL="https://unix.stackexchange.com/questions/13391/getting-not-found-message-when-running-a-32-bit-binary-on-a-64-bit-system"
srcURL="https://github.com/sass/dart-sass/releases/download/1.17.2/dart-sass-1.17.2-linux-ia32.tar.gz"
$ dpkg --add-architecture i386
$ apt-get `update`
$ apt-get -y `install` 'libc6-i386'
/dart/bin~% 64/dart-sass/src
$ readelf -a dart | head ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             ELF64
  Data:                              2 complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              DYN (Shared object file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
————————————————————————————32x bit distro:
Type: EXEC
Machine: Intel 80386
~
srcURL="https://hub.docker.com/r/michalklempa/dart-sass"
srcURL="https://github.com/dart-musl/dart"

/ # /opt/dart-sass/
dart-sass  sass       src/
/ # /opt/dart-sass/sass 
/opt/dart-sass/sass: exec: line 21: /opt/dart-sass/src/dart: not found
/ # /opt/dart-sass/src/dart 
sh: /opt/dart-sass/src/dart: not found
/ # ldd /opt/dart-sass/src/dart 
	/lib64/ld-linux-x86-64.so.2 (0x7f22be715000)
	libdl.so.2 => /lib64/ld-linux-x86-64.so.2 (0x7f22be715000)
	libpthread.so.0 => /lib64/ld-linux-x86-64.so.2 (0x7f22be715000)
	librt.so.1 => /lib64/ld-linux-x86-64.so.2 (0x7f22be715000)
	libm.so.6 => /lib64/ld-linux-x86-64.so.2 (0x7f22be715000)
	libc.so.6 => /lib64/ld-linux-x86-64.so.2 (0x7f22be715000)
Error loading shared library ld-linux-x86-64.so.2: No such file or directory (needed by /opt/dart-sass/src/dart)
Error relocating /opt/dart-sass/src/dart: __sbrk: symbol not found
Error relocating /opt/dart-sass/src/dart: __isinf: symbol not found
Error relocating /opt/dart-sass/src/dart: __isnan: symbol not found
Segmentation fault (core dumped)
$ +libc6-compat
# apk add libc6-compat
fetch http://dl-cdn.alpinelinux.org/alpine/v3.9/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.9/community/x86_64/APKINDEX.tar.gz
(1/1) Installing libc6-compat (1.1.20-r3)
OK: 6 MiB in 15 packages
/ # /opt/dart-sass/src/dart 
Error loading shared library ld-linux-x86-64.so.2: No such file or directory (needed by /opt/dart-sass/src/dart)
Error relocating /opt/dart-sass/src/dart: __sbrk: symbol not found
Error relocating /opt/dart-sass/src/dart: __isinf: symbol not found
Error relocating /opt/dart-sass/src/dart: __isnan: symbol not found
Segmentation fault (core dumped)
srcURL="https://www.musl-libc.org/faq.html"
$ ldd -v dart-sass/src/dart
/lib/: not found
$ dpkg -S ld-linux-x86-64.so.2
$ -exec /usr/local/share/sass/dart /usr/local/share/sass.dart.snapshot $@
esac
$ uname -a
Linux 73b2478fbbd4 5.15.49-linuxkit #1 SMP Tue Sep 13 07:51:46 UTC 2022 x86_64 Linux
$ whoami
web
$ sh /usr/local/bin/ sass -help
/usr/local/bin/sass: exec: line 20: /usr/local/bin/src/dart: not found
$ ls -l /usr/local/bin/src/dart
$ -rwxr-xr-x    1 web      web        4673432 Aug 18 22:00 /usr/local/bin/src/dart
$ ldd /usr/local/bin/src/dart
/lib64/ld-linux-x86-64.so.2 (0x7f484c9c6000)
libdl.so.2 => /lib64/ld-linux-x86-64.so.2 (0x7f484c9c6000)
libpthread.so.0 => /lib64/ld-linux-x86-64.so.2 (0x7f484c9c6000)
libm.so.6 => /lib64/ld-linux-x86-64.so.2 (0x7f484c9c6000)
libc.so.6 => /lib64/ld-linux-x86-64.so.2 (0x7f484c9c6000)

$ Dockerfile
RUN apk --no-cache add icu-libs

RUN apk --no-cache add \
    --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    dart-sass
esac    
#0 1.331 ERROR: unable to select packages:
#0 1.406   so:libicuuc.so.73 (no such package):
#0 1.406     required by: dart-3.1.0-r0[so:libicuuc.so.73]

# apline support sdk build on top of sdk create prs, move dart-musl/dart-sass ci build:

# musl.tar dart-sass name gnu build make cli_pkg in repo

# arm 32-bit qemu build musl in qemu build kernel arm. replace dart vm in .tar --fetch gnu -dart vm
esac

`lib/src/ast/sass/expression/binar_operation.dart ~ %`
"
var right = this.right;
var rightNeedsParens =" `switch (right) { 
BinaryOperationExpression(:var operator) => 
operator.precedence <= this.operator.precedence && !(operator ==` `this.operator && operator.isAssociative), ListExpression(hasBrackets:` false, 'contents:'

)
esac

srcURL="https://github.com/kaj"
in `spec/val/num/degen.hrx`
a {
  b: calc(-infinity * 1px);
}
Error: calc(-Infinitypx*em) isnt a valid CSS value.
# format calc(-infinity * 1px*em) output.css simple implement

# channel specific getters pkg -private @nodoc

srcURL="larsboldt"

colors.scss
%background-white {
  background-color: white;
}

foo.scss
@use "colors";

.foo {
  @extend %background-white;
  padding: 20px;
}

bar.scss
@use "foo";

.bar {
  @extend .foo;
  border: 1px solid black;
}

baz.scss
@use "foo";

.baz {
  @extend .foo;
  border: 1px solid green;
}

total.scss
@use "bar";
@use "baz";

sass total.scss total.css

Error: The target selector was not found.
Use "@extend %background-white !optional" to avoid this error.
  ╷
4 │   @extend %background-white;
  │   ^^^^^^^^^^^^^^^^^^^^^^^^^
  ╵
  foo.scss 4:3  root stylesheet
esac
  .foo {
  @extend %background-white;
  padding: 20px;
}
@mixin test {
  .foo {
    @extend %background-white;
    padding: 20px;
  }
} # import rule mixin target selector not found...
esac

srcURL="https://github.com/afshinm" 
# main.scss
@import "second.scss"
# second.scss
@import "fonts.scss";
@import "normalize.scss";
# resolve relative dir fs

srcURL="https://github.com/Lonli-Lokli"
$ --git -clone srcURL="https://github.com/Lonli-Lokli/yarn_pnp_scss"
✔ Browser application bundle generation complete.

./src/styles.scss - Error: Module build failed (from ./.yarn/__virtual__/sass-loader-virtual-01a772c5dc/0/cache/sass-loader-npm-12.6.0-19096ee50d-5d73a42858.zip/node_modules/sass-loader/dist/cjs.js):
SassError: Cant find stylesheet to import.
  ╷
5 │ @include meta.load-css('tippy.js/dist/tippy.css');
  │ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  ╵
  src\styles.scss 5:1  root stylesheet
esac
# DO NOT WORK
@use 'sass:meta';

@include meta.load-css('tippy.js/dist/tippy.css');
@include meta.load-css('tippy.js/themes/light.css');
@include meta.load-css('tippy.js/animations/scale.css');

# WORKS
@import 'tippy.js/dist/tippy.css';
@import 'tippy.js/themes/light.css';
@import 'tippy.js/animations/scale.css';

    at Object.loader (D:\samples\dart-sass-yarn\node_modules\sass-loader\dist\index.js:69:14)
 @ ./src/styles.scss 8:6-141 22:17-24 26:0-111 26:0-111 27:22-29 27:33-47 27:50-64
 @ ./src/index.js 1:0-23

$meta.load -vars # Read ERR
$meta.load-css()
@import dart.scss
@use api.js # node)mods
esac
srcURL="https://npmjs.com/sass"
srcURL="https://yarnpkg.com/advanced/rulebook/#packages-should-only-ever-require-what-they-formally-list-in-their-dependencies"
srcURL="https://pnpm.io/blog/2020/10/17/node-modules-configuration-options-wth-pnpm"
$.npmrc -hoist=false
$main.scss @use '@angular/material as mat;'
$pkg.json
{
    "scripts": {
        "test": "sass --load-path=node_modules main.scss main.css"
    },
    "dependencies": {
        "@angular/animations": "^16.0.0 || ^17.0.0",
        "@angular/cdk": "16.1.6",
        "@angular/core": "16.1.7",
        "@angular/common": "^16.0.0 || ^17.0.0",
        "@angular/forms": "^16.0.0 || ^17.0.0",
        "@angular/platform-browser": "^16.0.0 || ^17.0.0",
        "rxjs": "^6.5.3 || ^7.4.0",
        "zone.js": "~0.13.0",
        "@angular/material": "16.1.6",
        "sass": "1.64.1"
    }
}
$ npx -pnpm -i '&&' -npm test
Error: Cant find stylesheet to import.
  ╷
1 │ @use '@angular/material' as mat;
  │ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  ╵
  main.scss 1:1  root stylesheet
  esac
# connect Sass to node_mod dir:
# explicit pass node_mod dir load path .scss cpiler on CLI JS API
# .h multi node_mod dir pass explicitly using a third-party plugin Webpack-loader.scss implementation import.scss reolve Node.js algorithm.
# plugin.scss behavior
 
srcURL="https://github.com/sass/dart-sass/issues/1765#issuecomment-1699525576"

$node_modules -pass --load-path -args
$.npmrc
shamefully-hoist=true
> test
> sass --load-path=node_modules main.scss main.css

Error: Cant find stylesheet to import.
  ╷
6 │ @use '@material/typography' as mdc-typography;
  │ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  ╵
  node_modules/@angular/material/core/typography/_typography.scss 6:1  @forward
  @angular/_index.scss 12:1                                            @use
  main.scss 1:1                                                        root stylesheet

$ -require -call parent in node.js @use
node_modules/@angular/material/core/typography/_typography.scss -resolver -tree -find 
`node_modules/@angular/material/core/node_modules/
"@angular/material" --load-path:` srcURL="aspect-build/bazel-examples@1d77a3b#diff-1376ff1e5aa025dafc74ec5be35cbbd45fdd8670a46c62b798f02a640877bbe5"
> sass --load-path=node_modules --load-path=node_modules/.pnpm/@angular+material@16.1.6_z2mdkzecpj6njk476kyznmcgpe/node_modules main.scss main.css

Error: Cant find stylesheet to import.
   ╷
33 │ @use '@material/focus-ring/focus-ring';
   │ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   esac

srcURL="https://github.com/panoply"

sass --watch --load-path=node_modules/  src/styles/stylesheet.scss public/style.css # no cpiler
# stylesheet.scss
@import "bootstrap/scss/bootstrap";
@import "dir/custom-file"
# pnpm dependent define path
@import "../../node_modules/bootstrap/scss/bootstrap";
@import "dir/custom-file"
esac

srcURL="https://github.com/danog"

```
# Dart stage
FROM bufbuild/buf AS buf
FROM dart:stable AS dart

# Add your scss files
COPY --from=another_stage /app /app
```
srcURL="https://github.com/snake-py"
# main.scss
# overrides
@import './colors'; # colors for a customer and a color version
@import '../common'; # overrides for all themes
@import './overrides'; # overrides for a customer and a color version
@import '../utils';

# prime reaact scss imports (very big)
@import '@mylib/scss/stock/light/variables';
@import '@mylib/scss/stock/components';
@import '@mylib/scss/stock/light/extensions';

# custom components from my component lib build ontop of prime react
@import '@mylib/scss/templates';
@import '@mylib/scss/molecules';
@import '@mylib/scss/organisms';
@import '@mylib/scss/atoms';

# components build in the actual project
@import '../../pages/pages';
@import '../../UI/components/components';
@import '../../UI/widgets/widgets';
@import '../../UI/layouts/layouts';

# I am using: 
    "sass": "^1.62.1",
 
# Here is my css vite config
css: {
    postcss: {
      plugins: [autoprefixer()] 
        # removing autoprefixer does not improve the devtools
    }
  },
# dev tools
source span for calcs "deprecation warning"
esac
~
srcURL="https://github.com/benjaminprojas"
[vite:css] [sass] This operation cant be used in a calculation.
   ╷
23 │     $calculated-width: calc(#{$width}% - var(--aioseo-gutter) * #{$gap-divisor});
   │                                      ^
   ╵
  src/vue/assets/scss/app/mixins.scss 23:35       aioseoFlexRowSpan()
  src/vue/components/common/grid/Column.vue 45:3  root stylesheet
# Calculate the width of a column, including gutter, based on the number of columns it spans.
@mixin aioseoFlexRowSpan($column-span: 1) {
	$column-count: calc(12 / $column-span);
	$width: calc(100 / $column-count);
	$gap-divisor: calc((100 - $width) / 100);
	$calculated-width: calc(#{$width}% - var(--aioseo-gutter) * #{$gap-divisor});

	max-width: $calculated-width;
	flex-basis: $calculated-width;
} # edge-case
$ version -sass 
1.67.0
~
srcURL="https://github.com/mattpilott"
# Function
@function clampy($min, $max) {
   # strip unit for the max value for calculation
   $strip: div($max, $max * 0 + 1);
   # calculate the clamp
   $view: div($strip * 16, 1600) * 100vw; //16 = 1rem; 1600 = vw
   # return non-shorthand clamp code for better browser support
   @return min(max(#{$min}, #{$view}), #{$max});
}

# Usage
html {
  --font-h1: 400 #{clampy(1.75rem, 3.125rem)} / 1.3 var(--family);
}
Error: 1.75rem is not a number.

  17 │    @return min(max(#{$min}, #{$view}), #{$max});
     │                ^^^^^^^^^^^^^^^^^^^^^^
esac
@use 'sass:math';

# Function
@function clampy($min, $max) {
   # strip unit for the max value for calculation
   $strip: math.div($max, $max * 0 + 1);
   # calculate the clamp
   $view: math.div($strip * 16, 1600) * 100vw; //16 = 1rem; 1600 = vw
   # return non-shorthand clamp code for better browser support
   @return min(max(#{$min}, #{$view}), #{$max});
}

# Usage
html {
  --font-h1: 400 #{clampy(1.75rem, 3.125rem)} / 1.3 var(--family);
}
@use 'sass:math';

// Function
@function clampy($min, $max) {
   # strip unit for the max value for calculation
   $strip: math.div($max, $max * 0 + 1);
   # calculate the clamp
   $view: math.div($strip * 16, 1600) * 100vw; //16 = 1rem; 1600 = vw
   # return non-shorthand clamp code for better browser support
   @return min(max($min, $view), $max);
}

# Usage
html {
  --font-h1: 400 #{clampy(1.75rem, 3.125rem)} / 1.3 var(--family);
}
# deprecate deprecation
srcURL="https://github.com/parasshah195"
sass.compileString(sassCode, {
    style: 'compressed',
    quietDeps: true,
    syntax: 'scss',
  });
  `h1 {
  font-size: 5rem;
  # color: orange;
}`
× Cannot read properties of undefined (reading 'isTTY') # line break
esac
srcURL="https://github.com/gfellerph"
<===> parent.scss
parent {
  a: 1;
}


<===> child.scss
@use 'parent';

child {
  @extend parent;
  b: 1;
}

sibling {
  @extend child;
}


<===> index.scss
@use 'child';

index {
  @extend child;
  c: 1;
} # define share style mixin
src/placeholders.scss
srcURL="https://github.com/tuelsch/sass-playground"
~
parent, child, sibling, index {
  a: 1;
}

child, sibling, index {
  b: 1;
}

index {
  c: 1;
}
Error: The target selector was not found.
Use "@extend parent !optional" to avoid this error.
  ╷
4 │   @extend parent;
  │   ^^^^^^^^^^^^^^
  ╵
esac
  module-extends/child.scss 4:3  root stylesheet

%padded {
  padding: 8px;
}

%card {
  @extend %padded;
  
  background     : #fff;
  border-radius  : 5px;
}

%grid {
  margin-left    : -8px;  
}

%padded%grid {
  margin         : 0;
}

.card {
  @extend %card;
}

.grid {
  @extend %grid;
}
~
@mixin padding {
  padding: 8px;
}

@mixin card {
  background: #fff;
  border-radius: 5px;
}

@mixin grid {
  margin-left: -8px;
}

.card {
  @include padding;
  @include card;
}

.grid {
  @include grid;
}

.card.grid {
  margin: 0;
}
# container for utils
--output.css--
.content, .content.-width-full header, .u-container { ...rule } // in head of "util/"
.content, .content.-width-full header, .u-container { ...rule } // in end of "util/"
.content, .content.-width-full header, .u-container, .header, .footer  { ...rule } // in head of "layout/*"
--index.scss--
@forward "some-other-file";
@forward "utils";
@forward "layout";
--extend.scss--
%wrapper {
  max-width: 960px;
  margin: 0 auto;
  padding: 0 8px;
}
--layout/header.scss--
@use "extend";

.header {
  @extend %wrapper;
}
--layout/content.scss--
@use "extend";

.content {
  @extend %wrapper;
}
.content.-width-full header {
  @extend %wrapper;
}
--layout/footer.scss--
@use "extend";

.footer {
  @extend %wrapper;
}
--utils/grid.scss--
@use "extend";

.u-container {
  @extend %wrapper;
}
~
# placeholders
--- test.scss
@use "foo";
@use "bar";

--- foo.scss
@use "baz";

.foo {
  @extend %baz;
}

--- bar.scss
@use "baz";

.bar {
  @extend %baz;
}

--- baz.scss
@use "qux";

%baz {
  @extend %qux;
}

--- qux.scss
%qux {
  background-color: green;
}
~
shared/header.sass
----------------
%header
    font-size: 10px
    .header-cart
        color: green



shared/footer.sass
---------------
%footer
    background: red
    .footer-link
        text-decoration: none



shared/layout.sass
---------------
@use "header"
@use "footer"

%default-layout
    .header
        @extend %header

    .footer
         @extend %footer



single-product-page.sass
---------------------------------
@use "shared/layout"

.single-product-page
    @extend %default-layout



front-page.sass
---------------------
@use "shared/layout"

.front-page
    @extend %default-layout



entry.sass
--------------
@use "single-product-page"
@use "front-page"  // if I comment this, it will compile
~
.front-page .header, .single-product-page .header {
    font-size: 10px;
}

.front-page .header .header-cart, .single-product-page .header .header-cart {
    color: green;
}

# and so on is expected

~

placeholders/_link.scss
------------------------

%default-link {
    color: blue;
    
    &.-red {
        color: red;
    }
}

components/_link.scss
------------------------
@use "../placeholders/link";

.a {
  @extend %default-link;
}
main.css
-----------------------
.a {
  color: blue;
}
srcURL="https://jrson.me/blog/how-to-use/forward-placeholders-and-extend-selectors-with-sass/scss-mixins-effectively/"
esac
srcURL="https://github.com/ColeyG"
× Error: undefined:1:88: missing '}'
    at error (/var/www/lhsc/web/themes/custom/de_theme/node_modules/css/lib/parse/index.js:62:15)
    at declarations (/var/www/lhsc/web/themes/custom/de_theme/node_modules/css/lib/parse/index.js:259:26)
    at rule (/var/www/lhsc/web/themes/custom/de_theme/node_modules/css/lib/parse/index.js:560:21)
    at rules (/var/www/lhsc/web/themes/custom/de_theme/node_modules/css/lib/parse/index.js:117:70)
    at stylesheet (/var/www/lhsc/web/themes/custom/de_theme/node_modules/css/lib/parse/index.js:81:21)
    at module.exports (/var/www/lhsc/web/themes/custom/de_theme/node_modules/css/lib/parse/index.js:564:20)
    at rework (/var/www/lhsc/web/themes/custom/de_theme/node_modules/rework/index.js:27:21)
    at prependUrls (/var/www/lhsc/web/themes/custom/de_theme/node_modules/gulp-css-url-adjuster/index.js:12:12)
    at Transform._transform (/var/www/lhsc/web/themes/custom/de_theme/node_modules/gulp-css-url-adjuster/index.js:47:15)
    at Transform._read (/var/www/lhsc/web/themes/custom/de_theme/node_modules/gulp-css-url-adjuster/node_modules/through2/node_modules/readable-stream/lib/_stream_transform.js:184:10) # node mods
esac

# lazy span

srcURL="https://github.com/mraleph"
.github/workflows/ci.yml

include: [{os: ubuntu-latest, dart_channel: dev}]

run: dart --ignore-unrecognized-flags --enable-deprecated-wait-for tool/grind.art pkg-standalone-dev

$ sass --version
1.69.1
└"assets"
-dart-sass-169.1-linux-arm.tar.gz
esac
srcURL="https://github.com/rzhw"

# I've been working on a product using libsass/sassc and have migrated it to Dart Sass.

# Presently, this product doesn't support UTF-8 characters in stylesheets.

# It looks like Dart Sass only supports outputting as UTF-8, with dart-lang/sdk#11744 being the blocker 

# Given in README for why there's no support for more encodings (UTF-16, etc). 

# However Dart does appear to have an AsciiEncoder:

# For the time being, we've added an extra step to CSS escape non-ASCII characters in generated stylesheets. 

# On a related note, we also remove the @charset 'UTF-8'; @rule, both because it would be technically incorrect for an ASCII-encoded stylesheet, and because of #567...

# This isn't trivial because of sourcemaps, so we're doing this step with a PostCSS plugin.

# Would adding ASCII-encoded output support be in scope of Dart Sass? 

# I'd imagine when Dart adds other encoders, having this ready would let other encodings be sibling output options alongside UTF-8 and ASCII.

srcURL="https://github.com/BuptStEve"
esac
srcURL="https://github.com/sass/sass/issues1395" 

#57483844

@description # converts 1 or more characters into a unicode

@markup {scss}
unicode("e655"); "\e655"
@function unicode($str){
    @return unquote("\")+unquote(str-insert($str, "\\", 1))+unquote("\")
}
div::before {
  content: "\200B";
}

div::before {
  content: "​";
}
~ esac
content: '\00A0/\00A0';
content: ' / ';
A # render browser
~
content: '\0231F';
transform: rotate(45deg);
content:"⌟";transform:rotate(45deg);

srcURL="jpcamara"

# large issue thread from font-awesome

# indicates:
@charset "utf-8" '&&'
<meta charset="UTF-8">
# refresh chars self-hosted css cpiler from .scss 
FortAwesome/Font-Awesome
#17644

# janky ico
FortAwesome.php/Font-Awesome.scss

# solution found 
@BuptStEve # ignore dart-sass strings

# FortAwesome/Font-Awesome
#18775 (comment)

@function fa-content($fa-var) {
  @return unquote("\") + unquote(str-insert($fa-var, "\\", 1)) + unquote("\");
}

# sass team switched scss code > dart-sass
# font-display deploy

┌─:root@anonymous~$ % {}.fav.ico-font-awesome-flag:before{content:"\"}
    ERR

$ sass --version

"sass": "1.54.3"
"sass-loader": "13.0.2"

# font-awesome

esac

$ gwt
└css@charset~$

[WARN]: Line 13 column 12: encountered "": 

"{}" "+" "-" "," ";" "/" 

<STRING> <IDENT> <NUMBER> <URL> <PERCENTAGE> <PT> <MM> <CM> <PC> <IN> <PX> <EMS> <EXS> <DEG> <RAD> <GRAD> <MS> <SECOND> <HZ> <KHZ> <DIMEN> <HASH> <IMPORTANT_SYM> <UNICODERANGE> <FUNCTION>
"
# target .css spec toolchain dart-sass.css 

# When running the application in dev mode using webpack, 
<charset="utf8"> top
# cpiler/app.css
$ -rm in prod=`mode`
# charset not there
    in dev=`mode`
        prod=`mode`
        <meta="charset utf-8">
        in "head" `tag`

# bump css-load, sass-load, postcss-load
esac

:root@jpcamara~$ in -mod fav-content -rm \ -vars
 in the css is fa-font-awesome-flag:before{content:"\f425"} in <browser> # result

esac

$ icon-flag: before {
   content: "\E95E"
}
`icon-flag:before{content:"?"}`
srcURL=" https://utf8-icons.com/utf-8-character-59742"
@charset "utf-8" .scss index.html # reload escape function
esac
~
scrURL="https://github.com/foolip"
# chromium canary
199.0.6025.0
$ pass --enable-features=CSSParserIgnoreCharsetForURLs 
esac
~
~
# .css @font-face declare
# custom font fav.ico
# unicode content

# Without a charset declaration:

$ call Chrome=`canary.app`
# Using Terminal command 
top:
~$/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --enable-features=CSSParserIgnoreCharsetForURLs 

# will reproduce error;

# Using Terminal command 

# without flag 

/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary 

# will reproduce error;

# With charset declaration 

$ Canary --Version 119.0.6030.0 (Official Build) canary (arm64)
yes

# Also, I cannot explain why Chrome Canary which was opened as an app works differently than terminal Chromium.

get "ERR" while `Chrome` .cmd:l --enable
features=CSSParserIgnoreCharsetForURLs

# problem reproduce opening chrome canary as app
# fully close test
# new tab in open browser
~
esac
srcURL="https://github.com/nlozovan"

# session is over in cache cases
# result terminal not throwing error
# opened in session

$ -kill "Inspector_tools" -page -load
`font.ico ERR`
~
srcURL="https://github.com/foolip"

# diff betwixed chrome canary click ico from cmd:l
if -mod case='flag'
    -rel .scss, .css
        for .ascii in srcURL="http://sass-lang.com"
        esac
~
~
~
`
- Checksum: c2982db43bcd56f81cab3f51b5669e0edd3cfafb

+ Checksum: 5178e366228bde7854df12221393857bb3022628
`
$ import 'package:cli_pkg/js.dart';
~
srcURL="https://github.com/nbsharath"

$ import * as sass from "sass";
    const compileCSS = await sass.compilerStringAsync(value);
    error TypeError: J.getInterceptor$x(...) is undefined
    get$isTTY$x sass.dart.js:28035
    hasTerminal0 sass.dart.js:22668
    compileStringAsync1 sass.dart.js:19377
    installTearOffs sass.dart.js:112321
    Primitives_applyFunction sass.dart.js:1143
    Function_apply sass.dart.js:5375
    _callDartFunctionFast sass.dart.js:7244
    ret sass.dart.js:7222
    logic scss-to-css-converter.ts:5
    onClickHandle index.tsx:54
    callCallback react-dom.development.js:19443
    invokeGuardedCallbackImpl react-dom.development.js:19492
    invokeGuardedCallback react-dom.development.js:19567
    invokeGuardedCallbackAndCatchFirstError react-dom.development.js:19581
    executeDispatch react-dom.development.js:30635
    processDispatchQueueItemsInOrder react-dom.development.js:30667
    processDispatchQueue react-dom.development.js:30680
    dispatchEventsForPlugins react-dom.development.js:30691
    dispatchEventForPluginEventSystem react-dom.development.js:30881
    batchedUpdates$1 react-dom.development.js:23761
    batchedUpdates react-dom.development.js:27597
    dispatchEventForPluginEventSystem react-dom.development.js:30880
    dispatchEvent react-dom.development.js:28653
    dispatchDiscreteEvent react-dom.development.js:28624
    esac
~
# firefox win ^1.66.1
$ next.js set `global.proc` -var
ERR "chck for process.stdout.isTTY"

# add single line for call to compileString fixes it:

$ globalThis.proc = null;
$ globalThis.process = null;
# fix defensively 
$ check for process?.stdout?.isTTY or process?.stdout && process.stdout.isTTY == true 
# fragile browser contexts to never have process defined
$ globalThis.process = null;
~
~
~
srcURL="https://github.com/perry-mitchell"

$ npm ls sass
<snip>@2.0.0-r.266 /<snip>
├─┬ sass-loader@13.2.2
│ └── sass@1.66.1 deduped
└── sass@1.66.1

$ import sass from "sass";

async function renderStyles(
    # <snip>
): Promise<string> {
    # <snip>
    await fs.writeFile(entry, finalOverrides);
    # Sync as it's almost 2x as fast as async SASS compilation
    
    const { css: compiled } = sass.compile(entry, {
        logger: sass.Logger.silent,
        quietDeps: true
    });
    // <snip>
    return compiled;
}

`import sass from 'sass'` is deprecated.                                                                                 │
Please use `import * as sass from 'sass'` instead.                                                                       │
node:internal/process/promises:288                                                                                       │
            triggerUncaughtException(err, true /* fromPromise */);                                                       │
            ^                                                                                                            │
                                                                                                                         │
sass.Exception [Error]: Undefined operation ""-16px" * 2".                                                               │
   ╷                                                                                                                     │
41 │             height: calc(100% - #{$vb-footer-vert-pad * 2})                                                         │
   │                                   ^^^^^^^^^^^^^^^^^^^^^^^                                                           │
   ╵                                                                                                                     │
  ../tmp/tmp-14-SluKh9VGcLx5/_data_resources_styles_visual_app_header_footer.sass 41:35  @import                         │
  ../tmp/tmp-14-SluKh9VGcLx5/resources/styles/visual/index.sass 11:9                     @import                         │
  ../tmp/tmp-14-SluKh9VGcLx5/__entry.sass 6:9                                            root stylesheet                 │
    at Object.wrapException (/data/node_modules/sass/sass.dart.js:1252:43)                                               │
    at Object.throwExpression (/data/node_modules/sass/sass.dart.js:1271:15)                                             │
    at SassString0.times$1 (/data/node_modules/sass/sass.dart.js:111900:16)                                              │
    at _EvaluateVisitor_visitBinaryOperationExpression_closure1.call$0 (/data/node_modules/sass/sass.dart.js:93664:21)   │
    at _EvaluateVisitor1._evaluate0$_addExceptionSpan$1$3$addStackFrame (/data/node_modules/sass/sass.dart.js:92449:23)  │
    at _EvaluateVisitor1._evaluate0$_addExceptionSpan$2 (/data/node_modules/sass/sass.dart.js:92463:19)                  │
    at _EvaluateVisitor1.visitBinaryOperationExpression$1 (/data/node_modules/sass/sass.dart.js:91458:19)                │
    at BinaryOperationExpression0.accept$1$1 (/data/node_modules/sass/sass.dart.js:86771:22)                             │
    at BinaryOperationExpression0.accept$1 (/data/node_modules/sass/sass.dart.js:86774:19)                               │
    at _EvaluateVisitor1._evaluate0$_performInterpolationHelper$3$sourceMap$warnForColor (/data/node_modules/sass/sass.d │
│ art.js:92265:24)                                                                                                                                                     │
                                                                                                                         │
Node.js v18.17.1

# compileAsync
srcURL="https://github.com/stof" in .scss
$vb-footer-vert-pad {'container 16px'}
`err NaN`
~
# does not crash call. rather rejects promise.
# properly handle error if ending up in `triggerUncaughtException` node
$ sass.Exception [Error]: Undefined operation ""-16px" * 2"

$ Node.js v18.17.1

$ renderStyles function const styles = await renderStyles(sassFilesIndex, type, themePrefix);
$ call from 
<async-`express`-controller>
$ wrapper
<express-promise-router>
# catch async exception
    const { css: compiled } = sass.compile(entry, {
        logger: sass.Logger.silent,
        quietDeps: true
    });
    esac
# render style call sync compiler
~
# src map contain ext = never
# extender obj not complex selector
# selector removed

# dart cpiler does not catch as map
# rm allow pass any obj
# obj match key type

# caught port code php for SCSS_PHP project 
# phpstan (static analyzer)
# diff sig for storage
# require valid key type
spec/dir/ext/pseudo/into_pseudo/extend_after # dead c

srcURL="https://github.com/sjaustirni"
[`deep.select.ai`]: ┌─$ ::v-dep Vue 2.x version # deprecated 
:deep()
[@vue/compiler-sfc] ::v-deep 
ERR usage as a combinator has been deprecated. Use :deep(<inner-selector>) instead.
::v-deep .wrapper {
    display: flex;

    &__element {
        display: block
    }
}
:deep(.wrapper) {
    display: flex;
}
╵
ERROR in ./PATH/REDACTED
Module build failed (from ./node_modules/sass-loader/dist/cjs.js):
SassError: Invalid parent selector ":deep(.wrapper)"
   ╷
38 │     &__element {
   │     ^^^^^^^^^
   ╵
   esac
~   
# &__element nesting syntax :deep() func pseudo-class does not suppport inside nesting in func args

# css nesting spec support can not rely on scss esting inner select of :is()

srcURL="Scarecr0w9758"
# :deep(*)
│
<style lang="scss" scoped>
@use "sass.map";
@import "/src/assets/sass/components/"
~
:deep(.custom-tooltip)
{
    display: flex;
    flex-dir: column;
    &__header {
        padding: 0.5rem;
        bg-col: $gray;
    }
    &__txt {
    font-weight: bold;
    }
};
│
└[plugin:vite:css]: [sass]::Selector ":deep(.custom-tooltip)" `ERR can not have suffix`
 ╵
5  │ :deep().custom-tooltip {
   │^^^^^^^^^^^^^^^^^^^^^^^
...│outer selector
   │
8  │&__header {
╵   ————————————— parent selctor
~
src\pages\reports\ui\detail\charts\ParticipantDynamicChart.vue 5:1 root stylesheet
~
C:/Users/14KLVD/Desktop/dreamteam-front/src/pages/reports/ui/detail/charts/ParticipantDynamicChart.vue:181:1
# C Algorithm $1 fs
esac

~
~
srcURL="https://github.com/MelvilQ"
~
# Angular from node-sass dart-sass browser
.scss
~
position: fixed;
top: 0;
bottom: 0;
left: 0;
right: 0;
is compiled to this CSS:
~
position: fixed;
inset: 0;
~
# iOS Safari < 14.5 property inset
srcURL="https://caniuse.com/mdn-css_properties_inset"

2.58% -global # usage
find in `.config | cpiler`
> browser.lst
# dart-sas generating css node-sass
# build pipeline
# anonymous hack:
.class{
right: 0!important;
bottom: 0;
top: 0;
left: 0;
}
srcURL="https://stackoverflow.com/questions/65899348/prevent-chrome-browser-from-converting-position-property-to-inset"
esac
~
~
~
srcURL="https://github.com/sadqsalau"
$ cpiler `Node v21` in -nav -obj
╵
TypeError: Cannot read properties of undefined (reading 'indexOf')
~
# add global nav obj
function(hooks) {
  if (typeof navigator != "object") return hooks;
  var ua = navigator.userAgent;
  if (ua.indexOf("DumpRenderTree") >= 0) return hooks;
  if (ua.indexOf("Chrome") >= 0) {
    function confirm(p) {
      return typeof window == "object" && window[p] && window[p].name == p;
    }
    if (confirm("Window") && confirm("HTMLElement")) return hooks;
  }
  hooks.getTag = getTagFallback;
}; esac
# dart2js
srcURL="https://github.com/dart-lang/sdk"
# lts not a release

esac
~
~
srcURL="https://github.com/ShenHongFei"
# NodeJS v21
╵
    if (typeof navigator != "object") return hooks;
    var ua = navigator.userAgent;
    if (ua.indexOf("DumpRenderTree") >= 0) return hooks;
D:\2\ddb\web\node_modules\.pnpm\sass@1.69.4\node_modules\sass\sass.dart.js:116832
    if (ua.indexOf("DumpRenderTree") >= 0) return hooks;

TypeError: Cannot read properties of undefined (reading 'indexOf')
# nav.usrAgent in nav.usrAgent ||

~
esac
~
srcURL="https://github.com/jkaye31"
:root~% dir1,2,3,4,5,6
*_need_file.scss
-reference_file.scss

$ import fs.scss from dir 2 ^ fs.scss 
@use 'file_needed.scss'
@use '_file_needed'
@use '_file_needed.scss'
@use 'dir1/dir2/_file_needed.scss'
@use './dir1/dir2/_file_needed.scss'
@use './dir1/dir2/file_needed.scss'
esac
loadPath: ['root/allDirs/']
@use '_file_needed.scss'
~
loadPaths: ['/allDirs/']
@use '_file_needed.scss'
╵
ERR .scss Not Found
[...] dir4/dir5/file_to_reference_scss
[...] dir4/dir5/dir6/_file_needed.scss
    if `fs_ref_scss` in -dir $ include _file_needed.scss from -subdir -dir
    # dir/ref file .scss
    @use 'dir/need_file';
    scss/_base.scss
    scss/style.scss
    # V 1.66.1 load mod_base.scss
    esac
    
    ~
srcURL="https://github.com/jwhitlock"
$ next.js dart-sass
src="maps" +++ -rel C:/
__init__ page load from this next.js -page -inject .css inline style
ERR 404
╵
src="map" C:/
╵
ERR is not relative to "http://www.vercel.com/vercel/next.js@27672"

this flow if source `absolute map path server has seen`

/*# sourceMappingURL=11bc70d3a586e887.css.map */
C:/
/*# sourceMappingURL=/_next/static/css/11bc70d3a586e887.css.map */
$ dart -sass -info + `option`*

$ sass source -map 
urls=relative --source-map-abspath="/_next/static/css/"
$ next.js -dart -sass C:/ # expected to map file
    is source -map 
    esac
    ~
# js api src map url
    # return src map
    # css output
~

# importCache, nodeImporter eval

$ fsImporter.cwd

# avail global import

$ AsyncImportCache.only({Iterable<AsyncImporter>? importers, Logger? logger})
      : _importers = [...?importers],
        _logger = logger ?? const Logger.stderr();
        esac
~

# Checksum: 5178e366228bde7854df12221393857bb3022628
# Checksum: a9421a2975e79ad591ae32474cd076e1379d0e75

$ import 'package:sass/src/importer/node_package.dart';
`
   case InboundMessage_CompileRequest_Importer_Importer.nodePackageImporter:
        var entryPointURL =
            Uri.parse(importer.nodePackageImporter.entryPointUrl);
        return NodePackageImporterInternal(entryPointURL);
        `esac
        ~
~
$ var downstream = _graph.remove(FilesystemImporter.cwd, url);
~
# Checksum: 342e907cf10e1dd80d7045fc32db43c74376654e
# Checksum: 039ce81351c314df5ec550096ab034ac3595916b

