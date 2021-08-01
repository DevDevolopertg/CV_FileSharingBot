FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/DevDevolopertg/CV_FileSharingBot/tree/main
RUN cd CV_FileSharingBot
WORKDIR /CV_FileSharingBot
RUN pip3 install -U -r requirements.txt
CMD python3 main.py
