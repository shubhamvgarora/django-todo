# Use the official Python image as the base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY . .
RUN pip install --no-cache-dir Django djangorestframework psycopg2-binary

# Command to run the application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
