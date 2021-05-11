FROM public.ecr.aws/lambda/python:3.8
WORKDIR /
COPY taskdef.json .
COPY appspec.yml .
WORKDIR /usr/src/app
EXPOSE 8000
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY server.py .
CMD ["python3", "./server.py"]
