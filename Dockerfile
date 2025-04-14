# Dockerfile, Image, Container
FROM python:3.9

ADD main.py .

RUN poetry install

CMD ["python", ".Docker_tutorial/main.py"]