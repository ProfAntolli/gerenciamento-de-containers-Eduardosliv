# Definir imagem base oficial do Python 3.9
FROM python:3.9

# Definir diretório de trabalho dentro do container
WORKDIR /app

# Copiar arquivo de dependências para o diretório de trabalho
COPY requirements.txt .

# Instalar as dependências da aplicação
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante do código da aplicação para o diretório de trabalho
COPY . .

# Expor a porta 8080 (ou a porta que a aplicação escuta)
EXPOSE 8080

# Definir o comando para executar a aplicação ao iniciar o container
CMD ["python", "app.py"]
