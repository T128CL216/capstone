setup:
	python3 -m venv ~/.venv
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
hadolint_install:
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x /bin/hadolint
		
python_install:
	apk add --no-cache python3 py3-pip &&\
    apk add --no-cache curl &&\
    ln -sf python3 /usr/bin/python &&\
    python3 -m ensurepip &&\
    pip3 install --upgrade pip &&\
    pip install awscli

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all:
	setup install lint