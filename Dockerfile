# Use Node.js as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /jara_wadia_site

# Cache and Install dependencies
COPY package.json ./
COPY yarn.lock ./
RUN yarn install

# Copy app files
COPY . .

# Set environment variable to configure the port
ENV PORT=7775

# Expose port 7775 for React
EXPOSE 7775

# Start the app
CMD ["yarn", "start"]
