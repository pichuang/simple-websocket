# Simple Websocket

## Environment

- Python3.9
  - `. venv/bin/activate`

## Run

```bash
python app.py
```

## Build

```bash
docker build -t websockets-test:1.0 .
```

## Run

### Docker

```bash
docker run --name run-websockets-test --publish 32080:5566 --rm docker pull ghcr.io/pichuang/simple-websocket:main
```

### Kubernetes

```bash
kubectl apply -f https://raw.githubusercontent.com/pichuang/simple-websocket/main/deployment.yml
```

## Test

```bash
python -m websockets ws://localhost:32080/
```

## References

- [websockets - Deploy to Kubernetes][1]

[1]: https://websockets.readthedocs.io/en/stable/howto/kubernetes.html