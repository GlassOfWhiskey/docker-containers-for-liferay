FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.1.4

COPY ./configs ./config

RUN bin/elasticsearch-plugin install analysis-kuromoji && \
	bin/elasticsearch-plugin install analysis-icu && \
	bin/elasticsearch-plugin install analysis-smartcn && \
	bin/elasticsearch-plugin install analysis-stempel