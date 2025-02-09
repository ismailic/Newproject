
FROM python:3.9-slim

WORKDIR /app

COPY . /app
# Installer pytest
RUN pip install pytest
RUN pip install -r requirement.txt

VOLUME [ "/app/py" ]

EXPOSE 5000

CMD ["python", "app.py"]
