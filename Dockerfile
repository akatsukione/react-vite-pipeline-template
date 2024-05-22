# 1. For build React app
FROM node:16 AS development

# Set working directory
WORKDIR /app

# 
COPY package.json .
COPY package-lock.json .

# Same as npm install
RUN npm ci

COPY . .
# RUN npm run build
# ENV CI = true
# ENV PORT=3000
EXPOSE 5173

CMD [ "npm", "run", "dev" ]
