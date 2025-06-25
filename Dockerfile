# Usa una imagen base oficial de Python
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY requirements.txt .
COPY app.py .

# Instala dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto que usa Streamlit
EXPOSE 8501

# Comando para ejecutar la app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]