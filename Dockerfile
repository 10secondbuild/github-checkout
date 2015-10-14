FROM ubuntu

RUN apt-get update -qq \
	&& apt-get install -qqy \
	curl jq git \
	--no-install-recommends

COPY run /opt/10second.build/github-checkout/
RUN chmod u+x /opt/10second.build/github-checkout/run
WORKDIR /data/10second.build/

ENTRYPOINT ["/opt/10second.build/github-checkout/run"]

