FROM python:3.8

COPY ./app /app
RUN pip install -r /app/requirements.txt
WORKDIR /app

#CMD ["python", "/app/manage.py", "run_gunicorn", "0.0.0.0:5000"]
CMD ["gunicorn", "-b", "0.0.0.0:5000", "simple_flask/app:app"]
