all:
	GOARCH=arm go build -o arm github.com/rakyll/helloworld && \
	GOARCH=arm64 go build -o arm64 github.com/rakyll/helloworld && \
	lipo -create arm arm64 -o main/main && \
	rm arm arm64
