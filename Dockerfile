# Pull official base Python Docker Image
FROM python:3.10.6

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONBUFFERED=1

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Copy project
COPY . /code/