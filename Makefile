.PHONY: clean install upload

clean:
	rm -rf src/*.egg-info
	rm -rf src/dist
	rm -rf src/build

install: clean
	pipenv run python setup.py install

upload: clean
	pipenv run python setup.py sdist bdist_wheel
	pipenv run twine upload dist/*
