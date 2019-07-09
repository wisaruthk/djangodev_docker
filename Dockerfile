FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /var/www
WORKDIR /var/www

ADD ./mysite/requirements.txt /var/www/
RUN pip install uwsgi \
    && pip install --no-cache-dir -r /var/www/requirements.txt

EXPOSE 3031