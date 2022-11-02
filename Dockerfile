FROM alpine:3.11

WORKDIR /app

RUN apk add --update python

RUN apk add --update py-pip

COPY ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
