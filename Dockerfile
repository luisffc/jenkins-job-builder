FROM alpine:3.3
MAINTAINER Luis Cavalcante <luis@coffeetech.com.br>

ENV JJB_VERSION=1.4.0
ENV JJBA_VERSION=1.0.5
ENV JJB_CONFIG_FILES=/opt/jenkins-job

WORKDIR ${JJB_CONFIG_FILES}

RUN apk add --no-cache python py-pip
RUN pip install jenkins-job-builder==${JJB_VERSION} jenkins-job-builder-addons==${JJBA_VERSION}

ADD base-config.ini /etc/jenkins_jobs/jenkins_jobs.ini
