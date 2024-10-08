# Utiliza uma imagem Python oficial como base
FROM python:3.12

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências e instala os pacotes
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copia o restante da aplicação
COPY . .

# Expõe a porta que o Flask usa
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]