FROM python:3.9


WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    python-dev-is-python3 \
    libssl-dev \
    libffi-dev \
    libblas-dev \
    liblapack-dev \
    gfortran \
    gcc


COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . .

EXPOSE 80


CMD ["python", "app.py"]

~                           
