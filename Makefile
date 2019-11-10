APP_DIR := $(CURDIR)
YARN_EXEC := `which yarn`
WRANGLER_EXEC := `which wrangler`

all: test

.PHONY: build

build:
	$(YARN_EXEC) build

publish: build
	$(WRANGLER_EXEC) publish

preview:
	$(WRANGLER_EXEC) preview