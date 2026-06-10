PROTO_DIR 	= proto
OUT_DIR 	= gen/go
PROTO_FILE 	= proto/tasks/tasks.proto

.PHONY: all generate clean help

all: generate

generate:
	protoc \
		-I $(PROTO_DIR) \
		$(PROTO_FILE) \
		--go_out=./$(OUT_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=./$(OUT_DIR) \
		--go-grpc_opt=paths=source_relative \

clean:
	rm -rf $(OUT_DIR)/*.go