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

```
docker run --name run-websockets-test --publish 32080:5566 --rm docker pull ghcr.io/pichuang/simple-websocket:main
```

## Test

```bash
python -m websockets ws://localhost:32080/
```

## References

- [websockets - Deploy to Kubernetes][1]

[1]: https://websockets.readthedocs.io/en/stable/howto/kubernetes.html