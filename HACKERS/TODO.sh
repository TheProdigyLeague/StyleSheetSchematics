srcURL="https://github.com/sass/dart-sass/issues/2017#event-9545056476"
# npm version of sass - 1.63.4
# user.esm
# other-file.js is other-file.cjs
# other-file
import sass from 'sass'

() => {
  const webpackConfig = await import('./other-file');
}
const sass = require('sass')

TypeError: Cannot read properties of undefined (reading 'pop')
    at Object.<anonymous> (/Users/path/to/node_modules/sass/sass.node.js:2:43)
    # problem with importing the package more than one time
    # stack-blitz: https://stackblitz.com/edit/stackblitz-starters-wm1r15?file=index.mjs
    # CJS file is our production build file, which we want to avoid doing experimental things with, and the esm file is our development build file which double loads pkg

srcURL="https://github.com/bep" #user
srcURL="https://github.com/sass/dart-sass/issues/2014" #git
srcURL="https://discourse.gohugo.io/t/dart-sass-embedded-deprecated-no-longer-works-with-homebrew/44775" #issue
:root/admin~%$ deprecate dart-sass-embedded