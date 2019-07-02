LD_FLAGS := -X main.AppVersionRev=`date -u +%s` -extldflags '-static'

all: testdata go-bindata

.PHONY: go-bindata
go-bindata:
	go build -a -o dist/go-bindata -ldflags "$(LD_FLAGS)" ./go-bindata

.PHONY: testdata
testdata:
	make -C testdata

.PHONY: clean
clean:
	rm -rf dist
