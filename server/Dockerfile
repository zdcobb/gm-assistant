FROM debian:11
WORKDIR /app/server
ENV FLASK_APP=main.pyg
COPY . .
RUN apt-get update -y && apt-get install -y python3 python3-pip
RUN pip3 install -r requirements.txt
CMD ["./run_dev.sh"]