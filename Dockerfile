# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set container working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 8520

# Command to run the application
CMD ["python", "app/dashboard.py"]