install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval Untitled90.ipynb

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test