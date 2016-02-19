
all: js bats

js:
	npm run lint
	npm run deps
	npm run test
	npm run test:cov

bats:
	./bats/bin/bats test/test.bats

.PHONY: all js bats
