FROM node:16
RUN mkdir /app
WORKDIR /app
COPY jenkins_app/package.json /app
RUN npm install
COPY jenkins_app/ /app
EXPOSE 3000
CMD ["npm","start"]