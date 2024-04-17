FROM python:3.11.1

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SUPERUSER_PASSWORD=$DJANGO_SUPERUSER_PASSWORD
ENV GDAL_LIBRARY_PATH=/usr/lib/libgdal.so

EXPOSE 8000

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y \
    libgdal-dev \
    gdal-bin \
    && rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt
