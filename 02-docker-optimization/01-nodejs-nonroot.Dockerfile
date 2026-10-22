FROM node:26-alpine as Builder
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm ci
##################################
FROM node:26.12.1-alpine3.23
WORKDIR /app
RUN addgroup -S appgroup && adduser -S -G appgroup appuser
USER appuser
COPY --from=Builder node_modules node_modules
COPY app.js .
EXPOSE 8080
CMD [ "node", "app.js" ]