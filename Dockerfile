# Use the official Python image as the base image
FROM python:3-alpine

# Copy the Python script to the container
COPY script.py .
COPY .env.production .

# Run the script when the container starts
#CMD ["python", "script.py"]
RUN python script.py
CMD ["tail", "-f", "/dev/null"]
