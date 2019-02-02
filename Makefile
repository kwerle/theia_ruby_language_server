IMAGE_NAME=theia-ruby
VOLUMES=-v $(PWD):/source

image:
	docker build --rm -t $(IMAGE_NAME) .

yarn_lock: image
	rm -f yarn.lock
	docker run -it $(VOLUMES) -w /source $(IMAGE_NAME) yarn

shell: image
	docker run -it $(VOLUMES) -w /source $(IMAGE_NAME) ash

server: image
	docker run -it $(VOLUMES) -p 3000:3000 $(IMAGE_NAME)

clean:
	rm -rf node_modules ruby/lib ruby/node_modules
