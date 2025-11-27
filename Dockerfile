
# Gunakan image Node.js resmi
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy semua source code
COPY . .

# Expose port (Hextris biasanya berjalan di port 8080)
EXPOSE 8080

# Jalankan server menggunakan http-server
RUN npm install -g http-server

# Command untuk menjalankan aplikasi
CMD ["http-server", "-p", "8080"]
