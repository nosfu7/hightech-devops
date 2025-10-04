# [cite_start]Utiliser une image Python officielle comme image de base [cite: 37]
FROM python:3.11-slim

# [cite_start]Définir le répertoire de travail dans le conteneur [cite: 38]
WORKDIR /app

# [cite_start]Copier le fichier des dépendances [cite: 39]
COPY ./app/requirements.txt .

# [cite_start]Installer les dépendances [cite: 40]
RUN pip install --no-cache-dir -r requirements.txt

# [cite_start]Copier tout le contenu du dossier app dans le conteneur [cite: 41]
COPY ./app .

# [cite_start]Exposer le port sur lequel l'application s'exécute [cite: 42]
EXPOSE 5000

# [cite_start]Commande pour lancer l'application [cite: 43]
CMD ["python", "app.py"]
