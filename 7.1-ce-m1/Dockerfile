
FROM openjdk:8
LABEL maintainer="GlassOfWhiskey <iacopo.c92@gmail.com>"

WORKDIR /usr/local

ENV LIFERAY_HOME=/usr/local/liferay-ce-portal-7.1-m1
ENV CATALINA_HOME=$LIFERAY_HOME/tomcat-8.0.32
ENV PATH=$CATALINA_HOME/bin:$PATH
ENV LIFERAY_TOMCAT_URL=https://cdn.lfrs.sl/releases.liferay.com/portal/7.1.0-m1/liferay-ce-portal-tomcat-7.1-m1-20180223151209360.zip

RUN apt-get -qq update && \
	apt-get -qq install telnet && \
	apt-get -qq clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	useradd -ms /bin/bash liferay && \
	set -x && \
  	mkdir -p $LIFERAY_HOME && \
	curl -fSL "$LIFERAY_TOMCAT_URL" -o liferay-ce-portal-tomcat-7.1-m1-20180223151209360.zip && \
	unzip liferay-ce-portal-tomcat-7.1-m1-20180223151209360.zip && \
	rm liferay-ce-portal-tomcat-7.1-m1-20180223151209360.zip && \
	rm -rf $CATALINA_HOME/work/* && \
	chmod 744 $CATALINA_HOME/bin/*.sh && \
	mkdir -p $LIFERAY_HOME/data/document_library && \
	mkdir -p $LIFERAY_HOME/data/elasticsearch/indices

COPY ./configs/setenv.sh $CATALINA_HOME/bin/setenv.sh

RUN chown -R liferay:liferay $LIFERAY_HOME

USER liferay

EXPOSE 8080/tcp

ENTRYPOINT ["catalina.sh", "run"]