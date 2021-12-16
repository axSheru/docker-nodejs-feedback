FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

#Especifica el volumen en el cual se guardará la información.
#VOLUME [ "/app/feedback" ]
# A nivel código se puede crear un volúmen anónimo con -v /PATH

VOLUME [ "/app/temp" ]

#CMD se ejecuta cuando un contenedor es creado.
CMD [ "npm", "start" ]