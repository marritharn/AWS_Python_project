FROM python:3.9
MAINTAINER Tharun <marritharun863@gmail.com>
COPY . /app
WORKDIR /app
EXPOSE 5000
RUN pip install -r requirements.txt
ENTRYPOINT [ "python", "EmpApp.py" ]
