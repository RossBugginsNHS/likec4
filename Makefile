.PHONY: build start serve mermaid clean

clean:
	rm -rf dist

config:
	npm install

build:
	npm run build

start:
	npm run start

serve:
	npm run serve

mermaid:
	npm run mermaid

build-cicd: config build mermaid