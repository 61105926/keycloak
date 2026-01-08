FROM quay.io/keycloak/keycloak:21.1.1
ENV KC_HOSTNAME_STRICT=true
ENV KC_HOSTNAME_URL=https://auth.minoil.com.bo
ENV KC_HTTP_ENABLED=true

CMD ["start-dev"]