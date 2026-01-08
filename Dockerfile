FROM docker.io/keycloak/keycloak:21.1.1

ENV KC_HOSTNAME_URL=https://auth.minoil.com.bo
ENV KC_HOSTNAME_ADMIN_URL=https://auth.minoil.com.bo
ENV KC_HOSTNAME_STRICT=true
ENV KC_HOSTNAME_STRICT_HTTPS=true
ENV KC_PROXY=edge
ENV KC_HTTP_ENABLED=false

CMD ["start"]
