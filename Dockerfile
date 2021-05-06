FROM python:3.7-slim-buster
WORKDIR /usr/src/app
EXPOSE 8000
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY server.py .
CMD ["python3", "./server.py"]
