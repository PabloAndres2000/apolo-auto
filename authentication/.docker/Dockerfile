# Usamos una imagen oficial de Python
FROM python:3.9-slim

# Configuramos el directorio de trabajo
WORKDIR /app

# Instalamos dependencias
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el código de la app Django
COPY . /app/

# Exponemos el puerto 8000 para el servidor de desarrollo de Django
EXPOSE 8000

# Comando para arrancar el servidor de desarrollo de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
