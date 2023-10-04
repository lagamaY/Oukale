# Utilisez l'image officielle Nginx comme image de base
FROM nginx:latest

# Supprimez le contenu par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*


COPY . /usr/share/nginx/html

# Exposez le port 80 (port par défaut pour HTTP)
EXPOSE 80

# Commande pour démarrer le serveur Nginx
CMD ["nginx", "-g", "daemon off;"]
