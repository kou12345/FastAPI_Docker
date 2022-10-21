FROM python:3.9-buster
ENV PYTHONUNBUFFERED=1

COPY ./app /app

WORKDIR /app

COPY /app/requirements.txt .
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

CMD [ "uvicorn", "main:app", "--reload", "--port", "8000", "--host", "0.0.0.0"]