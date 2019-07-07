FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /var/www
WORKDIR /var/www
ADD ./mysite/requirements.txt /var/www/mysite/
RUN pip install uwsgi
RUN pip install -r /var/www/mysite/requirements.txt

EXPOSE 3031