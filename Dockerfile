# syntax=docker/dockerfile:1

FROM python:latest

WORKDIR /api

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt --no-cache-dir

COPY api/ .

CMD ["gunicorn", "--workers=1", "--bind", "0.0.0.0:5000", "spotify:app"]
