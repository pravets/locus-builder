FROM sleemp/osmosis:0.47
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install --yes curl python3
RUN pip install yadisk

COPY . /app

RUN chmod +x /app/download_poly.sh 
RUN chmod +x /app/update_poly.sh 

WORKDIR /app

CMD ["/bin/bash"]