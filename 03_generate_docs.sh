#!/usr/bin/env bash

nim doc --index:on -o:docs/htmldocs/stuff.html src/stuff.nim
nim doc --index:on -o:docs/htmldocs/submodule1.html src/stuff/submodule1.nim
nim doc --index:on -o:docs/htmldocs/submodule2.html src/stuff/submodule2.nim

nim buildIndex docs/htmldocs/

mv docs/htmldocs/*.html docs/

# delete docs/htmldocs/

# open docs/theindex.html
