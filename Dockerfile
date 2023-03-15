FROM python:3.6.1-alpine

RUN pip install --upgrade pip

WORKDIR /docker-flask

ADD . /docker-flask

RUN pip install Flask==0.12.2
# RUN pip install numpy==1.19.5

RUN pip install folium==0.5.0

CMD ["python","main.py"]