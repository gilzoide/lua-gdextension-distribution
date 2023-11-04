GITHUB_CLI_BIN ?= gh
GITHUB_REPO ?= gilzoide/lua-gdextension
TAG ?=
PATTERN ?= lua-gdextension.zip

DIST_URL = lua-gdextension.zip

DIST_IMPORTED_PATHS = addons
DIST_URL_DOWNLOAD_OUTPUT = /tmp/lua-gdextension-asset.zip

unzip:
	rm -rf $(DIST_IMPORTED_PATHS)
ifneq (,$(filter http://% https://%,$(DIST_URL)))
	curl -L $(DIST_URL) -o $(DIST_URL_DOWNLOAD_OUTPUT)
	unzip $(DIST_URL_DOWNLOAD_OUTPUT)
else
	unzip $(DIST_URL)
endif

download-release:
	$(GITHUB_CLI_BIN) release download $(TAG) --repo $(GITHUB_REPO) --pattern "$(PATTERN)" --clobber

unzip-release: download-release unzip

.PHONY: unzip download-release unzip-release
