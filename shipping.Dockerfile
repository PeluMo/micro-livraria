
# Imagem base derivada do Node
# FROM: tecnologia que será a base de criação da imagem.
FROM node

# Diretório de trabalho
# WORKDIR: diretório da imagem na qual os comandos serão executados.
WORKDIR /app

# Comando para copiar os arquivos para a pasta /app da imagem
# COPY: comando para copiar o código fonte para a imagem.
COPY . /app

# Comando para instalar as dependências
# RUN: comando para instalação de dependências.
RUN npm install

# Comando para inicializar (executar) a aplicação
# CMD: comando para executar o seu código quando o container for criado.
CMD ["node", "/app/services/shipping/index.js"]