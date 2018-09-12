#jenkins 원본 이미지 사용
FROM jenkinsci/jenkins:latest

USER root
# docker 설치
RUN apt-get update -qq
RUN apt-get install -qqy apt-transport-https ca-certificates
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo deb https://apt.dockerproject.org/repo debian-jessie main > /etc/apt/sources.list.d/docker.list
RUN apt-get update -qq
RUN apt-get install -qqy docker-engine

USER jenkins