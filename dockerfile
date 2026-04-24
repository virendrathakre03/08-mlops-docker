# use an offiicial Python runtime as a parent image
FROM python:3.8-slim
# set the working directory in the container
WORKDIR /app
# copy the current directory contents into the container at /app
COPY . /app
# install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# make port 5000 available to the world outside this container
EXPOSE 5000
# define environment variables
ENV FLASK_APP=app.py
# run app.py when the container launches /run the flask app
CMD ["flask", "run", "--host=0.0.0.0"]
