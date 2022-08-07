# docker-compose-volume

用 docker-compose 以及 Docker volumes 来跑 Python 脚本并且保留数据。

## 使用说明，

在终端跑命令，

```
docker-compose up -d
```

## 特性

- multi-stage build
  - 分离依赖
  - 缓存结果
- named volumes
  - 数据持久化
  - 支持相对路径

## 解释

- `pachyderm/python-build` 是一个不怎么需要安装其它东西，可以直接用来跑 Python 脚本的 image。你也可以使用一些更轻量的 image 比如 `python:3.9-slim` 然后手动安装 `gcc` 和 ` build-essential` 来跑 Python 脚本。
- `https://pypi.tuna.tsinghua.edu.cn/simple` 是国内的豆瓣 pip 镜像。

> 以上两条是中国大陆用户的推荐配置，大陆的网连接 Dockerhub 很快但是连接 ubuntu 的发行包以及 pip 包都非常慢，算是一种特殊的优化。

## 参数

- docker workdir: `usr/app`
- python venv path: `usr/app/venv`
- volumes target: `usr/app/data`

## 工作流

- 一开始我想用 Github Actions 来跑脚本爬数据，但是**失败了**。 workflows 文件夹仅保留作为参考，没有实际用到。
