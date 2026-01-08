FROM quay.io/keycloak/keycloak:26.5.1

# Configuración de hostname y proxy para HTTPS
ENV KC_HOSTNAME=auth.minoil.com.bo
ENV KC_HOSTNAME_URL=https://auth.minoil.com.bo
ENV KC_HOSTNAME_ADMIN_URL=https://auth.minoil.com.bo
ENV KC_HOSTNAME_STRICT=true
ENV KC_HOSTNAME_STRICT_HTTPS=true
ENV KC_PROXY=edge
ENV KC_HTTP_ENABLED=false

# Iniciar Keycloak en modo normal (producción o proxy)
CMD ["start"]