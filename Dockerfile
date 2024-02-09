FROM python:3.12.0
#Set the working directory in the container
WORKDIR /app
# Copy the local requirements file to the container
COPY . .
#Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy the local code to the container
EXPOSE 8000
# Specify the command to run om container start
CMD ["python","main.py"]