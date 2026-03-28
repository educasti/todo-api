# Imagen base oficial de Node.js (versión ligera)
FROM node:20-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia primero solo los archivos de dependencias
# (Docker cachea esta capa si no cambian)
COPY package*.json ./

# Instala solo dependencias de producción
RUN npm ci --only=production

# Copia el resto del código
COPY src/ ./src/

# Expone el puerto que usa la app
EXPOSE 3000

# Comando para arrancar
CMD ["node", "src/index.js"]