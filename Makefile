# Copyright 2020 Rigetti & Co, Inc.

.PHONY: requirements
requirements: requirements.txt
	pip install -r requirements.txt

.PHONY: test
test:
	./scripts/test_notebooks.sh
