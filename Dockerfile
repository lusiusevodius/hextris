
FROM node:18-alpine

WORKDIR /app

# Copy semua file ke container
COPY . .

# Install http-server untuk serve file statis
RUN npm install -g http-server

# Expose port 8080
EXPOSE 8080

# Jalankan server
CMD ["http-server", "-p", "8080"]
