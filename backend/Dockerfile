FROM python:3-slim
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /backend
COPY . /backend
RUN pip install -r requirements.txt \
    && apt update \
    && apt install netcat -y \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/backend/app/entrypoint.sh"]
