# 1. Start from a base image
FROM node:18-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy package.json and install libraries
COPY package.json .
RUN npm install

# 4. Copy the rest of the application code
COPY . .

# 5. Tell Docker what port the app runs on
EXPOSE 3000

# 6. The command to run when the container starts
CMD ["node", "index.js"]