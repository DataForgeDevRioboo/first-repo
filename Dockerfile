# Usa uma imagem base leve do Python
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia e instala as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação
COPY . .

# Expõe a porta (Opcional, mas boa prática)
EXPOSE 5000

# Comando para iniciar o servidor
CMD ["python", "app.py"]

