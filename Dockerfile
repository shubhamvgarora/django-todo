FROM Python:3.11

WORKDIR /app

RUN apt-get update
    python -m pip install Django==5.1.1
    git clone https://github.com/django/django.git
    python -m pip install -e django/
