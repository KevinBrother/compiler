# doc

[doc](https://pku-minic.github.io/online-doc/#/lv0-env-config/docker)

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

### Run the C test

From the project root, run:

```sh
sh scripts/test-hello-c.sh
```

Expected output:

```text
hello, compiler
```

After the devcontainer is running, the same test can be run inside it:

```sh
devcontainer exec --workspace-folder . sh scripts/test-hello-c.sh
```
