create_bindgen:
    mkdir -p gen
    cargo run --features=uniffi/cli --bin uniffi-bindgen generate src/math.udl -l kotlin -o gen
    cargo run --features=uniffi/cli --bin uniffi-bindgen generate src/math.udl -l ruby -o gen
