# 1.指定基础镜像
FROM alpine:latest
 
# 2.添加说明等信息
LABEL name=bkp description="jdk21 base on alpine image"
 
# 3.安装jdk（这一步很慢，请耐心等待，我安装大概花费了10分钟）
RUN apk add --no-cache --no-cache openjdk21
 
# 4.查看java版本 
CMD ["java","-version"]
