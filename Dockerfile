# Use Python 3.8 slim image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 5000 to the outside world
EXPOSE 5000


# Install the dependencies from requirements.txt
RUN pip install -r requirements.txt

# Command to run the Flask application
CMD ["python", "flask_api.py"]
