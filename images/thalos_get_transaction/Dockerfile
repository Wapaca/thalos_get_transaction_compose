FROM node:18.16.1

WORKDIR /app

RUN git clone https://github.com/Wapaca/thalos_get_transaction.git .
RUN npm update

CMD ["node", "index.js", "--redis-url", "redis://redis:6379"]