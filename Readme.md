# djangodev_docker
ตัวอย่าง Docker environment สำหรับพัฒนา django

# การ start
 * `docker-compose up`
 * `docker-compose up -d`
 
 เปิด Web Browser
 url> `localhost:9090`

# การเชื่อมต่อของ Services
web_client > nginx:9090 > socket:3031 > uwsgi > django:mysite
