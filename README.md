# music

<img  src="https://gitee.com/aszh/Gitee-Pages/raw/master/img/logo.png" align='left'/>

 一个由Django框架构建的在线音乐网站



## :waxing_crescent_moon: 环境要求

基于x86架构的Linux、Windows、Unix操作系统



## :first_quarter_moon: 部署步骤

### 1. 普通部署

1. 建议使用虚拟环境venv

2. 安装依赖的库

   ```
   pip3 install -r requirements.txt
   ```

3. 创建数据库music_db, 并把music_db.sql导入该数据库中

4. 在music/settings.py中修改相关配置

   ```python
   DATABASES = {
       'default': {
           'ENGINE': 'django.db.backends.mysql',
           'NAME': 'music_db',
           'USER': 'root',
           'PASSWORD': '*****',
           'HOST': '0.0.0.0',
           'PORT': '3306',
       }
   }
   ```

5. 运行项目

   ```bash
   python3 manage.py runserver 0.0.0.0:80
   ```

   ### 2. Docker 部署

   1. 拉取镜像

      ```bash
      docker pull aszhc/django-server
      ```
      ```bash
      docker pull registry.cn-hangzhou.aliyuncs.com/aszh/django-mysql-server
      ```

   2. 运行容器

      ```bash
      docker run -itd -p 8080:8080 django-server
      docker run -itd -p 3306:3306 django-mysql-server
      ```
      
   
   3. 进入容器参照普通部署修改相关配置
   
      

## :waxing_gibbous_moon: 使用的软件包

```python
asgiref==3.3.4
Django==3.2.2
PyMySQL==1.0.2
pytz==2021.1
sqlparse==0.4.1
```



## :full_moon: 展示

![](https://gitee.com/aszh/Gitee-Pages/raw/master/img/2021-05-13_17-34.png)