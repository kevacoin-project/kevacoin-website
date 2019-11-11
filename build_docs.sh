#!/bin/bash
set -e

function replace_content() {
    tmp_file="md.tmp"
    markdown-it $1 -o $tmp_file
    sed "/CONTENT/{
        s/CONTENT//g
        r $tmp_file
    }" $2 > $3

    rm $tmp_file
}

replace_content faq/faq.md faq.liquid faq.html
replace_content tutorials/solo_mining.md tutorial_solo_mining.liquid tutorial_solo_mining.html
replace_content reference/cli.md documentation.liquid documentation.html

npx eleventy --output docs

rm faq.html tutorial_solo_mining.html documentation.html

