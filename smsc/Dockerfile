FROM openjdk:8-alpine

WORKDIR /usr/local/bin/

# http://www.seleniumsoftware.com/downloads.html
ENV SMPP_DOWNLOAD_PATH "https://drive.google.com/uc?id=0B7YOzDQMt_TmS2lNMlpndnJndDA&export=download"

RUN set -ex \
	&& wget -qO smppsim.tar.gz $SMPP_DOWNLOAD_PATH \
	&& tar zxf smppsim.tar.gz \
	&& rm smppsim.tar.gz \
	&& chmod a+x ./SMPPSim/startsmppsim.sh

WORKDIR SMPPSim
ENTRYPOINT ["sh", "-c", "./startsmppsim.sh"]
