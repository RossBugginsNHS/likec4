.PHONY: build start serve mermaid clean

clean:
	rm -rf dist

build:
	npm run build

start:
	npm run start

serve:
	npm run serve

mermaid:
	npm run mermaid

build-cicd: build mermaid