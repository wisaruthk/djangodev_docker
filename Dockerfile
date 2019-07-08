FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /var/www
WORKDIR /var/www
ADD ./mysite/requirements.txt /var/www/
RUN pip install uwsgi
RUN pip install -r /var/www/requirements.txt

EXPOSE 3031