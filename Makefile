image_name := ustwo/nodejs

build:
	docker build -t $(image_name) .

shell:
	docker run --rm -it $(image_name) sh
