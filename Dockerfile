# 1.指定基础镜像
FROM alpine:latest
 
# 2.添加说明等信息
LABEL name=bkp description="jdk21 base on alpine image"
 

cd /opt
# 下载openjdk
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
 
tar zxvf jdk-21_linux-x64_bin.tar.gz
 
vim ~/.bashrc
 
export JAVA_HOME=/opt/jdk-21
 
export JRE_HOME=$JAVA_HOME/jre
 
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
 
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
