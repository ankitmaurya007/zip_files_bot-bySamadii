FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

RUN pip3 install -U pip

RUN cd /

RUN git clone https://github.com/ankitmaurya007/zip_files_bot-bySamadii

RUN cd zip_files_bot-bySamadii

WORKDIR /zip_files_bot-bySamadii

RUN pip3 install -U -r requirements.txt

CMD python3 upload_files.py
