
FROM python:3.9-slim

WORKDIR /app

#COPY . /app
# Copier les tests dans l'image
#COPY . /app/tests/
COPY tests/ /app/tests/

# Installer pytest
RUN pip install pytest
RUN pip install flask
#RUN pip install -r requirements.txt

VOLUME [ "/app/py" ]

EXPOSE 5000

CMD ["python", "app.py"]
