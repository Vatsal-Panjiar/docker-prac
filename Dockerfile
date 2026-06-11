FROM node:18-alpine
WORKDIR /app

RUN addgroup -S appuser && adduser -S appuser -G appuser

COPY . .

RUN npm install

USER appuser
EXPOSE 3000

CMD ["npm", "start"]
