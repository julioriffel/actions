lint:
	@echo "Running flake8 ..."
	@echo $(SRC_FILES) | xargs flake8 --max-line-length=119

	@echo "Running pycodestyle ..."
	@echo $(SRC_FILES) | xargs pycodestyle --show-pep8 --show-source --max-line-length=119

requirements:
	pipenv lock
	pipenv lock -r > requirements.txt
	pipenv lock -r --dev > requirements-dev.txt

safety:
	@echo "Running safety check ..."
	@safety check
