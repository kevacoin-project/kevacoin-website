# kevacoin-website
Source code for https://kevacoin.org

The project uses [eleventy](https://github.com/11ty/eleventy) as static website generator. The generated website is under /docs.

### Installation
<code>npm install</code>

### Generation
The generated files are under /docs, do not manually edit these files. We use [Liquid language](https://shopify.github.io/liquid/)
for the web page templates. After making changes to the files, run the following command:

<code>npx eleventy --output docs</code>

Check in your changes as well as the changed files under /docs. The github page will be served from this directory.


