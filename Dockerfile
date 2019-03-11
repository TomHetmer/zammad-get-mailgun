FROM zammad/zammad-docker-compose:zammad

ENV ZAMMAD_DIR /home/zammad

RUN apt-get update -qq && apt-get install -y python3

WORKDIR /opt/get-mail
ADD server.py /opt/get-mail

CMD ["python3", "server.py"]
