# Simple Websocket

## TODO

- [x] Websocket Implementation
- [x] Azure Test Loading - Jmeter Websocket
- [ ] Azure Chaose Engineer - Chase Mesh
- [ ] Azure Traffic Manager

## Environment

- Python3.9
  - `. venv/bin/activate`
- Azure Kubernetes Service
- Application Gateway Ingress Controller
- Azure Test Loading


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

## Smoke Testing

```bash
python -m websockets ws://localhost:32080/
```

## Load Testing

- [Microsoft Build of OpenJDK](https://learn.microsoft.com/zh-tw/java/openjdk/download)
- [Apache Jmeter 5.5](https://jmeter.apache.org/download_jmeter.cgi)

## References

- [websockets - Deploy to Kubernetes][1]

[1]: https://websockets.readthedocs.io/en/stable/howto/kubernetes.html