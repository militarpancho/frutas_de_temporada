FROM python:3.7.2-slim

MAINTAINER "militarpancho@gmail.com"

COPY ./requirements.txt /usr/src/app/requirements.txt

WORKDIR /usr/src/app

RUN pip install -r requirements.txt

COPY . /usr/src/app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

