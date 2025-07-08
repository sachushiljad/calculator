# Use Python base image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy files into container
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
