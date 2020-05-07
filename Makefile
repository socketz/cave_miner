PIP=/usr/local/bin/pip3
PYTHON=/usr/bin/python3
TWINE=/usr/local/bin/twine

.PHONY: install publish

install:
	$(PIP) install -e .
publish:
	$(PIP) install twine wheel
	$(PYTHON) setup.py sdist bdist_wheel
	$(TWINE) upload dist/*
	rm -fr build dist .egg cave_miner.egg-info
