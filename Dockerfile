FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

#Especifica el volumen en el cual se guardará la información.
#VOLUME [ "/app/feedback" ]

#CMD se ejecuta cuando un contenedor es creado.
CMD [ "node", "server.js" ]