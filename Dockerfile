# Usa la imagen oficial de Keycloak
FROM quay.io/keycloak/keycloak:21.1.1

# Copia archivos de configuración / temas si tienes
# COPY themes/ /opt/keycloak/themes/
# COPY scripts/ /opt/keycloak/scripts/

# Variables de entorno por defecto (se pueden sobrescribir en docker-compose)
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin123

# Expone el puerto (igual que en docker-compose)
EXPOSE 8080

# Comando por defecto
CMD ["start"]
