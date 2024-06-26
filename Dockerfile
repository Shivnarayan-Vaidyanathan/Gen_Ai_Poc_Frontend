# Use an official Node.js image
FROM node:20.9.0

# Set the working directory inside the container
WORKDIR /Gen_Ai_Poc_Frontend-main

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the project files
COPY src/Component/ ./src/Component/
COPY src/ ./src/
COPY public/ ./public/

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]