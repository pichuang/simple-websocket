FROM docker.io/python:3.9.16-alpine3.17

ENV SUMMARY="Summary of Simple Websocket Program" \
    DESCRIPTION="Description of Simple Websocket Program"

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="Python 3.9" \
      name="pichuang/simple-websocket" \
      version="1" \
      maintainer="Phil Huang <phil.huang@microsoft.com>" \
      org.opencontainers.image.source="https://github.com/pichuang/simple-websocket" \
      org.opencontainers.image.title="Simple Websocket" \
      org.opencontainers.image.url="https://github.com/pichuang/simple-websocket" \
      org.opencontainers.image.vendor="Night9"

RUN pip install websockets==11.0.3 asyncio==3.4.3

COPY app.py .
EXPOSE 5566

CMD ["python", "app.py"]
