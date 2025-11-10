# Imagen base ligera de Python
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia todo el contenido del proyecto al contenedor
COPY . /app

# Instala dependencias si existen
RUN pip install --no-cache-dir flask

# Expone el puerto que usa Flask
EXPOSE 5000

# Ejecuta la aplicación
CMD ["python", "app.py"]
