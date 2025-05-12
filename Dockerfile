FROM node:lts-buster
RUN git clone https://github.com/Ailking6428/OMAR-KHAN-MD/root/ikOmar
WORKDIR /root/ikOmar
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
