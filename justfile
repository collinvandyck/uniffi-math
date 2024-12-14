build:
    cargo build --features=uniffi/cli --release
    mkdir -p gen
    cargo run --features=uniffi/cli --bin uniffi-bindgen generate src/math.udl -l kotlin -o gen
    cargo run --features=uniffi/cli --bin uniffi-bindgen generate src/math.udl -l ruby -o gen
