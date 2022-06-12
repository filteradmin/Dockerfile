FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip neofetch -y

RUN git config --global user.name filteradmin
RUN git config --global user.email filter4dmin@yandex.com
RUN git config --global credential.helper store
RUN echo "https://filteradmin:$GH_TOKEN@github.com" > ~/.git-credentials

RUN cd /
RUN git clone https://filteradmin:$GH_TOKEN@github.com/filteradmin/shell.git safone
RUN cd safone
WORKDIR /safone

RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "main.py"]
