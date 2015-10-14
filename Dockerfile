FROM ubuntu

RUN apt-get update -qq \
	&& apt-get install -qqy \
	curl jq git \
	--no-install-recommends

COPY run /opt/10second.build/github-checkout/
WORKDIR /opt/10second.build/github-checkout/
RUN chmod u+x run

ENTRYPOINT ["./run"]
CMD []
