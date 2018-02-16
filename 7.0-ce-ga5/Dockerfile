FROM openjdk:8
LABEL maintainer="GlassOfWhiskey <iacopo.c92@gmail.com>"

WORKDIR /usr/local

ENV LIFERAY_HOME=/usr/local/liferay-ce-portal-7.0-ga5
ENV CATALINA_HOME=$LIFERAY_HOME/tomcat-8.0.32
ENV PATH=$CATALINA_HOME/bin:$PATH
ENV LIFERAY_TOMCAT_URL=https://cdn.lfrs.sl/releases.liferay.com/portal/7.0.4-ga5/liferay-ce-portal-tomcat-7.0-ga5-20171018150113838.zip

RUN apt-get -qq update && \
	apt-get -qq install telnet && \
	apt-get -qq clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	useradd -ms /bin/bash liferay && \
	set -x && \
  	mkdir -p $LIFERAY_HOME && \
	curl -fSL "$LIFERAY_TOMCAT_URL" -o liferay-ce-portal-tomcat-7.0-ga5-20171018150113838.zip && \
	unzip liferay-ce-portal-tomcat-7.0-ga5-20171018150113838.zip && \
	rm liferay-ce-portal-tomcat-7.0-ga5-20171018150113838.zip && \
	rm -rf $CATALINA_HOME/work/* && \
	mkdir -p $LIFERAY_HOME/data/document_library

COPY ./configs/setenv.sh $CATALINA_HOME/bin/setenv.sh

RUN chown -R liferay:liferay $LIFERAY_HOME

USER liferay

EXPOSE 8080/tcp

ENTRYPOINT ["catalina.sh", "run"]
