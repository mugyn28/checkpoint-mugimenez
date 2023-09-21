# Use a imagem base Python 3.8-slim-buster
FROM python:3.8-slim-buster

# Defina o diretório de trabalho como /app
WORKDIR /app

# Copie o conteúdo da pasta local para o diretório de trabalho
COPY . /app

# Instale as dependências da aplicação, se houver algum arquivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta 80 para tráfego HTTP
EXPOSE 80

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
