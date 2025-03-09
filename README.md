# Lua GDExtension Distribution
Distribution repository for [Lua GDExtension](https://github.com/gilzoide/lua-gdextension),
used for submitting it to the [Asset Library](https://godotengine.org/asset-library/asset).

`Lua GDExtension` asset link: https://godotengine.org/asset-library/asset/2330


## Updating the distribution
Either:
```sh
# a) Download and unzip latest release using GitHub CLI
$ make unzip-release

# b) Download and unzip a tagged release using GitHub CLI
$ make unzip-release TAG=0.2.0

# c) Unzip a local distribution zip file
$ make unzip DIST_URL=<path-to-local-zip-file>
# d) From a remote distribution zip file
# E.g.: release 0.2.0 from GitHub
$ make unzip DIST_URL=https://github.com/gilzoide/lua-gdextension/releases/download/0.2.0/lua-gdextension.zip
```
