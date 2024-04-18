# usa uma imagem linux alpine com node 20 instalado como base da maquina virtual
FROM node:20-alpine

# cria e entra na pasta /app, pois antes disso ele está na pasta raiz do sistema
WORKDIR /app

# apk é o equivalente ao google play do linux alpine, então usamos ele pra baixar
# e instalar o git.
RUN apk --no-cache add git

# clona o projeto via git. O "." no final do comando significa que ele será extraido
# na pasta atual (/app), pois normalmente ele criaria uma pasta para o projeto (/app/swyno-backend)
RUN git clone https://github.com/Ozaru/swyno-backend.git .

# é feito um pull aqui para garantir que o projeto esteja atualizado, pois é possível 
# que uma versão antiga esteja em cache e seja reaproveitada
RUN git pull

# como estamos usando uma imagem node o npm tbm está disponível. E nós clonamos o projeto
# diretamente na pasta atual (/app). Lembre que a gente sobe somente o codigo fonte pro git, 
# então após clonar devemos instalar as dependências
RUN npm install

# este comando constroi o "executável" da aplicação
RUN npm run build

# este comando abre a porta 3000 (porta padrão do projeto) para que possa ser acessada de fora
EXPOSE 3000

# finalmente este é o comando pra ligar a aplicação
CMD ["npm", "run", "start:prod"]