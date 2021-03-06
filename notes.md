# Notes on making site changes. Taken from <https://get.foundation/sites/docs/starter-projects.html>

Here's an overview of what the ZURB Template can do:

## Asset Copying

Gulp will copy anything out of the src/assets folder as-is to the assets folder of your final project. Note that Sass files, JavaScript files, and images are not part of this copying process, as they have their own steps.

## Page Compilation

The src/ directory includes three folders used to create HTML pages: pages/, layouts/, and partials/. A flat file compiler called Panini is used to process your project's various pages, inserting them into a common template, and injecting any HTML partials. This is done with a templating language called Handlebars.

Panini has a dedicated page here in the docs that explains its various features. Learn more about Panini.

## Sass Compilation

Sass is compiled to CSS using Libsass (via node-sass). The main Sass file is under src/assets/scss/app.scss, and imports Foundation and Motion UI. Any new Sass partials you create should be in this folder as well.

The CSS is output in the nested style, which is readable like normal CSS. A source map is also created, which can be read by developer tools such as the Chrome Web Inspector. When building for production, the CSS is also compressed with clean-css, and pruned with UnCSS. UnCSS scans the HTML of your pages and removes any CSS classes you didn't use.

## JavaScript Compilation

JavaScript is transpiled using Babel (with the es2015 plugin) so you can use ES2015 features. The main Js file is under src/assets/js/app.js, and imports Foundation, jQuery and whatInput. You can import there installed packages and custom files, they will be included in the build.

A source map is created that maps back to the original files. By default, the bundled app.js is uncompressed. When building for production, the file is run through UglifyJS for compression.

The whole bundling process is handled by webpack: it manages all assets and dependencies for you and compiles them into one single file. If you're unfamiliar with imports or module bundling, check out:

What are ES6 imports
Beginner’s guide to webpack
Beginner’s guide to JavaScript Modules.
Image Compression

By default, all images are copied as-is from assets/img to your dist folder. When building for production, images are run through gulp-imagemin for compression. The plugin supports JPEG, PNG, SVG, and GIF files.

## BrowserSync

The template creates a BrowserSync server, which is at http://localhost:8000. Load this URL to see your compiled templates. While the server is running, any time you save a file, any pages you have open will automatically refresh, allowing you to see changes in real-time as you work.

Style Guide Creation

Under src/styleguide are two files to create a style guide for your project. The style guide is generated using Style Sherpa, a small plugin created by ZURB.

-----------------------------------

## List of Foundation blocks installed with the Foundation CLI

- topbar-responsive: `foundation blocks install topbar-responsive`
