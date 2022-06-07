buf: ./build/.make/build-buf

./build/.make/build-buf: ./build/Dockerfile ./build/build.sh
	./build/build.sh

generate: buf ../idl/idl/**/**/*.proto ../idl/idl/**/*.yaml
	docker run --rm --volume "`pwd`:/workspace" --workdir /workspace/idl tools-buf:local buf generate

lint: buf
	docker run --rm --volume "`pwd`:/workspace" --workdir /workspace/idl tools-buf:local buf lint

check: lint

test: generate
	@(cd ./pbgen/ && gotestsum --junitfile ../../unit-tests-idl.xml ./...)

clean:


.PHONY: generate lint verify buf test clean
