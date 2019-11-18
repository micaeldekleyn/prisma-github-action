FROM node:10-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/micaeldekleyn/prisma-github-action"
LABEL homepage="https://github.com/micaeldekleyn/prisma-github-action"

LABEL "com.github.actions.name"="Prisma"
LABEL "com.github.actions.description"="Wraps the Prisma Framework to enable common Prisma commands."
LABEL "com.github.actions.icon"="triangle"
LABEL "com.github.actions.color"="gray-dark"

RUN npm install -g prisma@1.34.10
ENTRYPOINT ["prisma"]
