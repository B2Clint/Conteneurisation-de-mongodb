# Utiliser l'image officielle MongoDB comme base
FROM mongo:latest

# Définir les variables d'environnement pour MongoDB
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=password

# Créer un répertoire de données MongoDB
RUN mkdir -p /data/db

# Exposer le port MongoDB (par défaut 27017)
EXPOSE 27017

# Commande par défaut pour lancer MongoDB
CMD ["mongod"]
