build:
	docker build -t jekyll-test .

serve:
	docker run -p 4000:4000 -it --rm --name jekyll-test jekyll-test

restart:
	docker build -t jekyll-test .
	docker run -p 4000:4000 -it --rm --name jekyll-test jekyll-test

push:
	docker build -t alexohneander/dev-null-blog .
	docker push alexohneander/dev-null-blog
	ssh root@159.69.39.254 "docker service update dev-null-blog --image alexohneander/dev-null-blog:latest"