FROM tangramor/slidev:latest

WORKDIR /slidev

COPY slides.md ./slides.md
COPY assets ./assets

EXPOSE 3030
