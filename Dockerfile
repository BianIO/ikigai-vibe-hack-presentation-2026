FROM node:20-slim
WORKDIR /app

RUN npm init -y
RUN npm install @slidev/cli@latest
RUN npm install @slidev/theme-default

COPY slides.md .
COPY assets/ ./assets/

EXPOSE 3030

CMD ["npx", "slidev", "slides.md", "--remote", "--port", "3030"]
