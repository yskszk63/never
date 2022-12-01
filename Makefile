.PHONY: FORCE
FORCE:

never-x86_64-unknown-linux-musl: FORCE
	cargo build --target x86_64-unknown-linux-musl --release
	cp target/x86_64-unknown-linux-musl/release/never $@
	strip $@

.PHONY: docker-x86_64-unknown-linux-musl
docker-x86_64-unknown-linux-musl: never-x86_64-unknown-linux-musl
	docker build -t never:latest --platform linux/amd64 --build-arg TARGET=$< .

#never-wasm32-wasi: FORCE
#	cargo build --target wasm32-wasi --release
#	cp target/wasm32-wasi/release/never.wasm $@
#
#.PHONY: docker-wasm32-wasi
#docker-wasm32-wasi: never-wasm32-wasi
#	docker build -t never:latest --platform wasi/wasm32 --build-arg TARGET=$< .
