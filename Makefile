BASE_URL ?= ""
SRC_DIR ?= src

.PHONY: build start serve mermaid clean
clean:
	rm -rf dist

config:
	sudo apt update && sudo apt-get install -y graphviz
	awk '{ system("asdf plugin add " $1) }' < .tool-versions
	asdf install
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
	@for dir in $(SRC_DIR)/*/ ; do \
		dirname=$$(basename $$dir); \
		echo "Processing $$dirname..."; \
		npm run mermaid $(SRC_DIR)/$$dirname -- --outdir dist/mermaid/$$dirname; \
	done

build-cicd: config build-base mermaid

rebuild: clean config build mermaid
