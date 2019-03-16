FROM python:3.6-slim

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install build-essential libpq-dev -y

RUN for i in $(seq 1 8); do mkdir -p "/usr/share/man/man$i"; done && \
    apt-get install postgresql-client -y

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt .

RUN python -m pip install -r requirements.txt --no-cache-dir

COPY . .

LABEL maintainer="Graham Ashton <graham@effectif.com>"

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8080"]
