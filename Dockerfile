FROM sleemp/osmosis:0.47
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install --yes curl

COPY . /app

RUN chmod  RUN chmod +x /app/download_poly.sh 
RUN chmod  RUN chmod +x /app/update_poly.sh 

WORKDIR /app

CMD ["/bin/bash"]