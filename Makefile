all:
	GOARCH=arm go build -o arm github.com/rakyll/helloworld
	GOARCH=arm64 go build -o arm64 github.com/rakyll/helloworld
	lipo -create arm arm64 -o main/main && rm arm arm64

arm:
	GOARCH=arm go build -o main/main github.com/rakyll/helloworld

arm64:
	GOARCH=arm64 go build -o main/main github.com/rakyll/helloworld
