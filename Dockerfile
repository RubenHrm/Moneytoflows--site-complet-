# Utilise Python 3.11
FROM python:3.11-slim

# Empêche Python de créer des fichiers .pyc
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Dossier de travail
WORKDIR /app

# Installer dépendances système
RUN apt-get update && apt-get install -y build-essential pkg-config default-libmysqlclient-dev && rm -rf /var/lib/apt/lists/*

# Copier requirements et installer
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn

# Copier tout le projet
COPY . .

# Exposer le port
EXPOSE 8080

# Commande de lancement
CMD ["gunicorn", "--timeout", "120", "--bind", "0.0.0.0:8080", "app:app"]
