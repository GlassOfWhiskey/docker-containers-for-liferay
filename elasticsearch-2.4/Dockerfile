FROM elasticsearch:2.4-alpine

COPY ./configs ./config

RUN bin/plugin install analysis-kuromoji && \
	bin/plugin install analysis-icu && \
	bin/plugin install analysis-smartcn && \
	bin/plugin install analysis-stempel