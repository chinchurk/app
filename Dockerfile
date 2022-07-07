FROM python:3.8-slim-buster
WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY src src
EXPOSE 5000
ENV FLASK_APP ./src/app.py
ENTRYPOINT ["python", "-m", "flask", "run", "--host=0.0.0.0"]

