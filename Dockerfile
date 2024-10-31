FROM node:16

#establecer el directorio de trabajo del contenedor
WORKDIR /app 

#copiamos el package.json y el lock.json
COPY package*.json ./ 

#instalar dependencias
RUN npm install

#copiar el resto del proyecto
COPY . .

#exponer el puerto donde correra mi proyecto 
EXPOSE 3007

#ejecuta el servidor 
CMD [ "node", "index.js" ]