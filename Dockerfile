# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN apt-get update && \
    apt-get install -y mysql-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variables for database connection
ENV DB_HOST "database-1.coghw13fheqo.us-east-2.rds.amazonaws.com"
ENV DB_USER "root"
ENV DB_PASS "root1234"
ENV DB_NAME "employee2"
ENV BUCKET_NAME "addemp-1"
ENV AWS_REGION "us-east-2"

# Run app.py when the container launches
CMD ["python", "Empapp.py"]

