BIN = forego
SRC = $(find . -mindepth 1 -maxdepth 1 -name '*.go')

.PHONY: all build clean install test lint

all: build

build: $(BIN)

clean:
	rm -f $(BIN)

lint: $(SRC)
	go fmt

test: lint build
	go test ./...
	cd eg && ../forego start

$(BIN): $(SRC)
	go build -v -o $@
