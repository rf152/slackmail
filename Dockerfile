FROM python:2

RUN pip install git+https://github.com/negokaz/slackmail

EXPOSE 25

ENTRYPOINT ["slackmail-db", "--listen-port=25"]
