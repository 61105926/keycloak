# Keycloak Setup

Este proyecto contiene la configuración para ejecutar Keycloak con Docker Compose.

## Requisitos

- Docker
- Docker Compose

## Inicio rápido

Para iniciar Keycloak, ejecuta:

```bash
docker-compose up -d
```

## Acceso

Una vez que Keycloak esté corriendo, puedes acceder a:

- **Consola de administración**: http://localhost:8080
- **Usuario administrador**: `admin`
- **Contraseña**: `admin`

## Comandos útiles

- **Iniciar Keycloak**: `docker-compose up -d`
- **Detener Keycloak**: `docker-compose down`
- **Ver logs**: `docker-compose logs -f keycloak`
- **Reiniciar**: `docker-compose restart keycloak`

## Despliegue en Coolify

Para desplegar este proyecto en Coolify:

1. **Sube el proyecto a GitHub**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Keycloak setup"
   git branch -M main
   git remote add origin https://github.com/TU_USUARIO/TU_REPO.git
   git push -u origin main
   ```

2. **En Coolify**:
   - Crea un nuevo proyecto
   - Selecciona "GitHub" como fuente
   - Conecta tu repositorio
   - Coolify detectará automáticamente el `docker-compose.yml`
   - Configura las variables de entorno necesarias (puedes usar `.env.example` como referencia)

3. **Variables de entorno importantes en Coolify**:
   - `KEYCLOAK_ADMIN`: Usuario administrador
   - `KEYCLOAK_ADMIN_PASSWORD`: Contraseña del administrador (cambiar en producción)
   - `POSTGRES_PASSWORD`: Contraseña de PostgreSQL (cambiar en producción)
   - `KC_HOSTNAME`: Tu dominio (si tienes uno configurado)

## Nota de seguridad

⚠️ **IMPORTANTE**: 
- Cambia todas las contraseñas por defecto antes de usar en producción
- Configura `KC_HOSTNAME` con tu dominio si tienes SSL/HTTPS
- Considera usar `KC_HOSTNAME_STRICT=true` y `KC_HOSTNAME_STRICT_HTTPS=true` en producción

