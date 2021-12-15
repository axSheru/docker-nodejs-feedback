FROM node:14

WORKDIR /app

#El . hace referencia al WORKDIR previamente establecido.
COPY package.json .

#RUN se ejecuta cuando una imagen es creada.
RUN npm install

COPY . .

#Esto es recomendado, realmente el puerto se expone al correr el contenedor con docker run -p
EXPOSE 80

#CMD se ejecuta cuando un contenedor es creado.
CMD ["node", "server.js"]