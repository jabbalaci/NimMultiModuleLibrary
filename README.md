Generate docs for a multi-modules library
=========================================

This is an example that shows how to create docs for
a library that contains several modules.

Here we achieve the following things:

* We have a library that has a main module (`src/stuff.nim`)
  and some submodules (`src/stuff/*.nim`).
* We generate HTML docs for every `*.nim` file.
* We also generate an index file (`theindex.html`) that
  contains exported things from every module.
* The `theindex.html` file has links to every module.
  The links work :)
* If you click on the name of a module in `theindex.html`,
  you get to the HTML documentation of that specific module.

As putting all these things together took me some time and I
didn't find a step-by-step documentation, I assembled
this sample project.

Under Linux, I had to execute the following commands:

```bash
$ nim doc --index:on -o:docs/htmldocs/stuff.html src/stuff.nim
$ nim doc --index:on -o:docs/htmldocs/submodule1.html src/stuff/submodule1.nim
$ nim doc --index:on -o:docs/htmldocs/submodule2.html src/stuff/submodule2.nim

$ nim buildIndex docs/htmldocs/

$ mv docs/htmldocs/*.html docs/

# delete docs/htmldocs/

# open docs/theindex.html
```

See also [`03_generate_docs.sh`](03_generate_docs.sh).

It would be nice if `nim doc` could do this with a switch. Generating
a complete documentation for a multi-module library should be easy.
