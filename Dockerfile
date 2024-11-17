# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire app folder into the container
COPY ./app /app

# Copy the requirements.txt file
COPY requirements.txt /app

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
