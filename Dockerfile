FROM registry.access.redhat.com/ubi9/nodejs-20@latest

USER 1001
ADD . .

RUN yarn
ENV NODE_OPTIONS="--openssl-legacy-provider"

CMD ["yarn", "start"]
