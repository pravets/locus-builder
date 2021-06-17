FROM sleemp/osmosis:0.47
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install --yes curl gnupg gnupg2 gnupg1
RUN echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" | tee -a /etc/apt/sources.list.d/yandex-disk.list > /dev/null && wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- | apt-key add - && apt-get update && apt-get install -y yandex-disk

COPY . /app

RUN chmod +x /app/download_poly.sh 
RUN chmod +x /app/update_poly.sh 

WORKDIR /app

CMD ["/bin/bash"]