# Simple Websocket


## TODO

- [x] Websocket Implementation
- [ ] Azure Test Loading - Jmeter Websocket
- [ ] Azure Traffic Manager

## Environment

- Python3.9
  - `. venv/bin/activate`
- Azure Kubernetes Service
- Application Gateway Ingress Controller

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

## Jmeter

- [Microsoft Build of OpenJDK](https://learn.microsoft.com/zh-tw/java/openjdk/download)
- 

## References

- [websockets - Deploy to Kubernetes][1]

[1]: https://websockets.readthedocs.io/en/stable/howto/kubernetes.html