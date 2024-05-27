# Utiliser une image 
FROM python:3.9-slim

# Définir le répertoire 
WORKDIR /app

# Copier le fichier requirements.txt
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
