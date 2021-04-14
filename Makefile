test:
	go test ./...
run:
	go run main.go
docker-build:
	docker build -t message-pipeline .
docker-run:
	docker run -d -p 3001:3001 --name app message-pipeline
docker-clean:
	docker rm -f app