# Use an official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy remaining app files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
