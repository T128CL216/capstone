setup:
	python3 -m venv ~/.venv
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
hadolint_install:
	sudo wget -O /bin/hadolint https://github.com/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x /bin/hadolint
lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all:
	setup install lint