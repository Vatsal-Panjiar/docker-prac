FROM node:18-alpine

WORKDIR /app

RUN addgroup -S appuser && adduser -S appuser -G appuser

COPY package*.json ./

RUN npm install

COPY . .

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 3000

CMD ["npm", "start"]