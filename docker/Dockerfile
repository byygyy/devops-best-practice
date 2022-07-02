FROM docker.io/evielabs/python2
WORKDIR /apps/chuanqiudzz/

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "main.py"]