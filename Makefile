all:
	CGO_ENABLED=1 GOARCH=arm go build -o arm golang.org/x/mobile/example/basic
	CGO_ENABLED=1 GOARCH=arm64 go build -o arm64 golang.org/x/mobile/example/basic
	lipo -create arm arm64 -o main/main && rm arm arm64
