ARG NODE_BASE_IMAGE_TAG=node-custom-1.0.0

FROM sanjail/jack:${NODE_BASE_IMAGE_TAG}

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

EXPOSE 5001

CMD [ "sh", "-c", "npm run build && npm run dev" ]