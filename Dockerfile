FROM public.ecr.aws/alexaprizesharedresources/python:3.7-slim-buster
WORKDIR /
COPY appspec.yml .
COPY taskdef.json .
EXPOSE 8000
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY server.py .
CMD ["python3", "./server.py"]
