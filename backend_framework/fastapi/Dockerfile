# Use Alpine version of Python 3.12
FROM python:3.12-alpine

# Set environment variables for Python
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PIP_NO_CACHE_DIR 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and other files to the container
# Change {pwd} to your app root folder name
COPY ./{pwd} /app
COPY ./requirements.txt /app

# Install dependencies
RUN pip install --upgrade pip && \
	pip install --no-cache-dir --upgrade -r requirements.txt

# Expose the port that the application will be running on
EXPOSE 8000

# Run the application
CMD ["uvicorn", "main:app", "--host=0.0.0.0"]