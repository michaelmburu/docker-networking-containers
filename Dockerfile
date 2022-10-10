FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]

# Step 1 create network: docker network create starwars-network
# Step 2 associate network to container: docker run --name mongodb --network starwars-network
# Step 2 associate network to container: docker run --name starwarsapp --network starwars-network -d --rm -p 3000:3000 starwarsapp-node