FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /capital-me
WORKDIR /capital-me
COPY requirements.txt /capital-me
RUN pip install -r requirements.txt
COPY . /capital-me

