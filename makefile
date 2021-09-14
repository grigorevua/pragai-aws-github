setup:
	virtualenv ~/1cloud/.pragai-aws

install:
	pip install -r requirements.txt

test:
	PYTHONPATH=. && pytest -vv --cov=paws --cov=pcli tests/*.py
	PYTHONPATH=. && py.test --nbval-lax notebooks/*.ipynb

lint:
	pylint --disable=R,C paws pcli

all: install lint test
