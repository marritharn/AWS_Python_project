FROM python:3.9
MAINTAINER Tharun <marritharun863@gmail.com>
COPY . /EmpApp
WORKDIR /EmpApp
EXPOSE 5000
RUN pip install -r requirements.txt
ENTRYPOINT [ "python", "app.py" ]
