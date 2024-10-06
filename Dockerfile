FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder

WORKDIR /app

COPY requirement.txt /app

COPY app.py /app

RUN pip3 install -r requirement.txt

EXPOSE 8000

ENTRYPOINT ["python3"]

CMD ["app.py"]
