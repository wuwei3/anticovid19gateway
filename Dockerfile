# 基于哪个镜像
#FROM java:8
FROM openjdk:8-jdk-alpine
# 将本地文件夹挂载到当前容器
VOLUME /tmp
WORKDIR /wuwei/anticovid19gateway


# 拷贝文件到容器
ADD AntiCovid19ApiGateway-0.0.1-SNAPSHOT.jar /wuwei/anticovid19gateway/anticovid19gateway.jar
#RUN bash -c 'touch /wuwei/registercenter/center.jar'

EXPOSE 8018
# 配置容器启动后执行的命令
#ENTRYPOINT  ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/wuwei/anticovid19gateway/anticovid19gateway.jar"]
ENTRYPOINT  ["java","-jar","/wuwei/anticovid19gateway/anticovid19gateway.jar"]
