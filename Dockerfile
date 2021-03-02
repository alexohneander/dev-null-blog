FROM jekyll/jekyll

WORKDIR /app

COPY . ./

RUN mkdir .jekyll-cache _site

EXPOSE 4000

CMD ["jekyll", "serve"]