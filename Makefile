all: testdata go-bindata

.PHONY: go-bindata
go-bindata:
	go build -o dist/go-bindata ./go-bindata

.PHONY: testdata
testdata:
	make -C testdata

.PHONY: clean
clean:
	rm -rf dist
