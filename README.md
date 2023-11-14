
```shell
docker build -t iyjian/science .

docker run --rm -d -t \
--name science \
-p 1081:1080 \
-v ~/.ssh/id_ed25519:/root/.ssh/id_ed25519:ro \
-e LOCAL_PORT=1080 \
-e USER=root \
-e REMOTE_HOST=47.236.111.253 \
iyjian/science
```
