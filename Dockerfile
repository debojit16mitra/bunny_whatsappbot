FROM fusuf/whatsasena:latest

RUN git clone https://github.com/debojit16mitra/bunny_whatsappbot1
WORKDIR /root/bunny_whatsappbot1/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
