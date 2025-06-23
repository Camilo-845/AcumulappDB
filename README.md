# Acumulapp DataBase documentation

Este proyecto utiliza Docker Compose para levantar y gestionar la base de datos. Sigue las instrucciones a continuación para ponerla en marcha.

[Esquema](https://www.drawdb.app/editor?shareId=3f20430118ac05c7eade957b4225a200)

---

## Prerequisitos

Antes de empezar, asegúrate de tener instalado:

- Docker

---

## Configuración del Entorno

1.  **Crea tu archivo `.env`**:
    Copia el archivo `example.env` a `.env` en el mismo directorio:

    ```bash
    cp example.env .env
    ```

2.  **Configura tus variables de entorno**:
    Abre el archivo `.env` y ajusta los valores de las variables según tus necesidades (por ejemplo, `POSTGRES_USER`, `POSTGRES_PASSWORD`, `POSTGRES_DB`).

---

## Ejecución de la Base de Datos

1.  **Levanta los servicios de Docker Compose**:
    Desde la raíz de este proyecto, ejecuta el siguiente comando:

    ```bash
    docker compose up -d
    ```

    Este comando:

    - Crea y levanta los contenedores definidos en `docker-compose.yml`.
    - La opción `-d` (detached) ejecuta los contenedores en segundo plano.

2.  **Verifica que la base de datos esté corriendo**:
    Puedes ver el estado de tus contenedores Docker con:

    ```bash
    docker ps
    ```

    Deberías ver un contenedor para tu base de datos en estado `Up`.
