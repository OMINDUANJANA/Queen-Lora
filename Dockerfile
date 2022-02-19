FROM fusuf/whatsasena:latest

RUN git clone https://github.com/DarkKingbot/Queen-Lora.git /root/Queen-Lora
WORKDIR /root/Queen-Lora/
ENV EN=English
RUN npm install supervisor -g
RUN yarn install --no-audit


CMD ["node", "bot.js"]
