# Use an official Python runtime as a parent image
FROM python:3.12-alpine

# Set environment variables for Python
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PIP_NO_CACHE_DIR 1

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN apk update && \
	pip install --upgrade pip && \
  pip install --no-cache-dir --upgrade -r requirements.txt && \
  python manage.py collectstatic --noinput && \
  groupadd -r user && useradd -r -g user user

# Provide All Permissions to the "app" Directory
chown -R user:user /app && chmod -R g+rwx /app

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run gunicorn with uvicorn workers
CMD ["gunicorn", "myproject.asgi:application", "-c", "gunicorn.conf.py"]
