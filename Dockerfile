FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY dice.py .
COPY templates/ ./templates/
COPY tests/ ./tests/

EXPOSE 5000

ENV FLASK_APP=dice

CMD ["flask", "run", "--host", "0.0.0.0"]