# 本地编译推送到个人仓库

```bash
docker build -t symphony:3.6.4  .

docker login --username=w13695500408@126.com registry.cn-hangzhou.aliyuncs.com

docker tag symphony:3.6.4 registry.cn-hangzhou.aliyuncs.com/geosamrt/symphony:latest

docker push registry.cn-hangzhou.aliyuncs.com/geosamrt/symphony:latest
```