FROM ubuntu:latest

WORKDIR /home/music

ADD . ./

# 安装python环境
RUN apt update
RUN apt list --upgradable
RUN apt install python3 -y
RUN apt install pip -y
RUN pip install -r requirements.txt

# 暴露端口
EXPOSE 8080

# 运行项目
ENTRYPOINT [ "python3 manage.py runserver 8080" ] 