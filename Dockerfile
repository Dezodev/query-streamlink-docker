FROM python:3.7

RUN mkdir /code/
COPY . /code/
WORKDIR /code/

EXPOSE 5000

RUN pip install -r requirements.txt

ENTRYPOINT ["./gunicorn.sh"]
