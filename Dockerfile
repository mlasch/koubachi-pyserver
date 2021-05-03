FROM python:3.8

RUN apt-get update -y && \
    apt-get install -y python3-dev

RUN pip install pipenv

COPY . /app

WORKDIR /app

RUN pipenv install --deploy --ignore-pipfile


#CMD ["pipenv", "run", "python", "src/koubachi_server/app.py"]
CMD ["pipenv", "run", "python", "-m", "koubachi_pyserver.app"]
