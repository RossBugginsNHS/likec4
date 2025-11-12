BASE_URL ?= ""

.PHONY: build start serve mermaid clean

clean:
	rm -rf dist

config:
	npm install

build:
	npm run build

build-base:
	npm run build -- --base $(BASE_URL)

start:
	npm run start

serve:
	npm run serve

mermaid:
	npm run mermaid

build-cicd: config build-base mermaid