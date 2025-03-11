# Use official Node.js image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json first
COPY package.json ./

# Check if package-lock.json exists before copying
# If it doesn’t exist, npm install will still work
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose Strapi's default port
EXPOSE 1337

# Start Strapi
CMD ["npm", "run", "develop"]
