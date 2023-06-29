FROM python:3.11-slim-buster


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# create group and add new user to group
RUN groupadd -r user && useradd -r -g user user

# run as root user
USER root

# virtual env
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# upgrade pip
RUN pip install --upgrade pip

# Copy the requirements file and other files to the container
COPY ./app /app
COPY ./requirements.txt /app

# Install dependencies
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

# Expose the port that the application will be running on
EXPOSE 8000

# Run the application
CMD ["uvicorn", "main:app", "--host=0.0.0.0", "--reload"]