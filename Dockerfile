FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip neofetch -y

RUN git config --global user.name filteradmin
RUN git config --global user.email filter4dmin@yandex.com

RUN cd /
WORKDIR /safone

COPY . .

CMD ["bash", "startup.sh"]
