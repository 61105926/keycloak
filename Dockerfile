FROM quay.io/keycloak/keycloak:21.1.1
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME=auth.minoil.com.bo
ENV KC_HTTP_ENABLED=true
CMD ["start-dev"]
