FROM python:3.8

COPY ./app /app
RUN pip install -r /app/requirements.txt
WORKDIR /app

CMD ["python", "/app/manage.py", "runserver", "0.0.0.0:5000"]
