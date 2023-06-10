lint: ## Run linter
	poetry run ruff .

format: ## Run formatter
	poetry run blue .
	poetry run isort .

install: ## Install dependencies
	poetry install

test: ## Run tests
	poetry run coverage run --source=GPhotos2GDrive -m pytest tests

selfcheck: ## Checks the validity of the pyproject.toml file
	poetry check

check: ## selfcheck + test + lint
	@make selfcheck
	@make test
	@make lint

build: ## Check and builds a package
	@make check
	@poetry build

package-install: ## build and install
	make build
	pip install dist/*.whl

cc-coverage: ## Prepare coverage report for Codeclimate
	poetry run coverage xml

help: ## This help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install test lint selfcheck check build package-install cc-coverage help format
.DEFAULT_GOAL := help
