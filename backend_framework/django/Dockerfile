FROM python:3.12-alpine

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PIP_NO_CACHE_DIR 1

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip && \
    pip install --no-cache-dir --upgrade -r requirements.txt && \
    python manage.py makemigrations && \
    python manage.py migrate && \
    python manage.py collectstatic --noinput

CMD ["python", "manage.py", "runserver"]
