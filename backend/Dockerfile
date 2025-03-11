FROM node:20

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the entire project
COPY . .

# Expose React's default port
EXPOSE 1337

# Run npm install again inside the container for safety
RUN npm install

# Start React in development mode
CMD ["npm", "start"]
