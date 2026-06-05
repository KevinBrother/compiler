# SysY Compiler

Rust/Cargo-based SysY compiler project.

## Development

Build the compiler from the project root:

```sh
cargo build
```

Run the current template implementation:

```sh
cargo run -- -koopa input.c -o output.koopa
```

## Devcontainer

This project uses the `maxxing/compiler-dev` Docker image for development.

### Enter the devcontainer

1. Install Docker.
2. Install VS Code and the Dev Containers extension.
3. Open this project in VS Code.
4. Run `Dev Containers: Reopen in Container` from the command palette.

VS Code will pull `maxxing/compiler-dev` the first time it opens the container.
Inside the container, the project is mounted at `/root/compiler`.

You can also start it from the terminal:

```sh
devcontainer up --workspace-folder .
```

This starts the container, but it does not open an interactive shell. To enter
the running container from the terminal:

```sh
devcontainer exec --workspace-folder . /bin/bash
```

If Docker Hub is slow or returns `ECONNRESET`, pull the image first and retry:

```sh
docker pull maxxing/compiler-dev:latest
devcontainer up --workspace-folder .
```

## Online Judge Build

When the repository root contains `Cargo.toml`, the judge builds the compiler
with:

```sh
cargo build --manifest-path Cargo.toml --release
```
