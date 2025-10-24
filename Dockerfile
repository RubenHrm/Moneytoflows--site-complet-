# Image Python
FROM python:3.11-slim

# Dossier de travail
WORKDIR /app

# Installer les dépendances système
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*

# Copier les dépendances Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn

# Copier le reste du code
COPY . .

# Exposer le port
EXPOSE 8080

# Définir variable d'environnement
ENV FLASK_APP=app.py

# Commande de démarrage
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
