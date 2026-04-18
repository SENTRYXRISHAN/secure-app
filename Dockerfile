FROM python:3.9-alpine

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN adduser -D appuser
USER appuser

CMD ["python", "app.py"]