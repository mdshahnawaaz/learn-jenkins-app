FROM mcr.microsoft.com/playwright:v1.39.0-jammy
RUN  npm install -g netlify-cli@20.1.1 node-jq

FROM node:18-alpine
RUN npm install -g serve