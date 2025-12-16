# gemini-lab
A sandboxed environment to run gemini-cli without fear.

## 1. Setup (First Run Only)
Create the bind-mount directories and generate the permission config:

```bash
mkdir -p config data
echo "UID=$(id -u)" > .env
echo "GID=$(id -g)" >> .env
```

Ensure your `GEMINI_API_KEY` is set in your shell or added to `docker-compose.yml` (if you're using it).

## 2. Start Service
Start the long-running container:

```bash
docker compose up -d --build
```

## 3. Usage

### Authenticate (Once)
Saves credentials to `./config/`.
```bash
docker exec -it gemini-lab gemini auth login
```

### Interactive Mode (Try things out)
Jump into the shell to prototype commands:
```bash
docker exec -it gemini-lab bash
```
