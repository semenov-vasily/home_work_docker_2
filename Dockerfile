FROM python:3.10-alpine

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

COPY . /src
COPY ./main/ /src/main/
COPY ./phones/ /src/phones/

RUN python src/manage.py makemigrations
RUN python src/manage.py migrate

EXPOSE 5050

WORKDIR src


CMD ["python", "manage.py", "runserver", "0.0.0.0:5050"]