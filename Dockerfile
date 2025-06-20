# Use official Python base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
