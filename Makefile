clean: clean-eggs clean-build
	@find . -iname '*.pyc' -delete
	@find . -iname '*.pyo' -delete
	@find . -iname '*~' -delete
	@find . -iname '*.swp' -delete
	@find . -iname '__pycache__' -delete

clean-eggs:
	@find . -name '*.egg' -print0|xargs -0 rm -rf --
	@rm -rf .eggs/

clean-build:
	@rm -fr build/
	@rm -fr dist/
	@rm -fr *.egg-info

test:
	poetry run pytest -sx

check-dead-fixtures:
	poetry run pytest --dead-fixtures

update-precommit:
	poetry run pre-commit autoupdate

pyformat:
	poetry run pre-commit run -a -v isort && poetry run pre-commit run -a -v black

lint:
	poetry run pre-commit install && poetry run pre-commit run -a -v
