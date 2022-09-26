# syntax=docker/dockerfile:1
FROM python:3.8-slim

WORKDIR /code
ENV FLASK_APP=app.py 
ENV FLASK_RUN_HOST=0.0.0.0
RUN apt-get -y update && apt-get install -y supervisor
# RUN apk --update add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt 
RUN pip install --no-cache-dir matplotlib pandas

EXPOSE 5000
COPY . .
CMD ["flask", "run"]
