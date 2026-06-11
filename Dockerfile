FROM node:18-alpine
WORKDIR /app

RUN groupadd -r appuser && useradd -r -g appuser appuser

COPY . .

RUN npm install

USER appuser
EXPOSE 3000

CMD ["npm", "start"]
