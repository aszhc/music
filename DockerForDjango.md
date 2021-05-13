```bash
docker run --name DjangoServer -itd -p 8080:8080 -p 13306:13306  ubuntu

docker cp music 8d9802f79b1e:/home

# 安装python 和 pip
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt update
apt install python3
apt-get install python3-pip


docker pull mysql:8.0.23
docker run -itd --name mysqlForDocker -p 3306:3306 -e MYSQL_ROOT_PASSWORD=Root_98zhou mysql:8.0.23

sudo service mysql stop
docker exec -it 852c2913edf1 /bin/bash

docker cp /home/zhou/桌面/music_db.sql 852c2913edf1:/home

use  music_db;
source /home/music_db.sql;


 pip install -r requirements.txt

```

```
docker commit -m "the first version" -a "aszhc" b827a8f0c12b aszhc/django-server:1.0.0

sudo docker tag b74b2c8f43db registry.cn-hangzhou.aliyuncs.com/aszh/django-server:1.0.0

sudo docker push registry.cn-hangzhou.aliyuncs.com/aszh/django-server:1.0.0
```

