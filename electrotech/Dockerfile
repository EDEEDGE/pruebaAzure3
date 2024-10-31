#construir la aplicacion con la imagen de node
FROM node:16 as build

WORKDIR /app

#copiar los package
COPY package*.json ./

#instalar dependencias
RUN npm install

COPY . .

#construir la aplicacion de react
RUN npm run build

#usa una imagen del servidor web para los archivos estaticos
FROM nginx:alpine

# copiamos los archios a la carpeta de nginx
COPY --from=build /app/build /usr/share/nginx/html

#exponer en el puerto 80
EXPOSE 80

#comando para ejecutar el nginx
CMD ["nginx", "-g", "daemon off;"]