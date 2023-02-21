FROM granatumx/gbox-py-sdk:1.0.0

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y zlib1g
RUN apt-get install -y bzip2
RUN apt-get install -y lzma
RUN apt-get install -y unzip
RUN apt-get install -y zip
RUN apt-get install -y gzip
RUN pip install pip --upgrade
RUN pip install datatable



COPY . .
RUN ./GBOXtranslateVERinYAMLS.sh
RUN tar zcvf /gbox.tgz package.yaml yamls/*.yaml
