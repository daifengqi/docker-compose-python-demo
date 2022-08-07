[中文版](./README-CN.md)

# docker-compose-volume

Use docker-compose and Docker volume to run Python scripts and persist data

## How to run

in the terminal, run

```
docker-compose up -d
```

## Features

- multi-stage build
  - separate dependencies
  - cache result
- named volumes
  - persistant data
  - use relative path

## Explanation

- `pachyderm/python-build` is an image which does not need to install basic tools. Alternatively you can use minimal image like `python:3.9-slim` and manually install `gcc` and ` build-essential` to run Python scripts.
- `https://pypi.tuna.tsinghua.edu.cn/simple` is to speed up pip install in Chinese mainland; remove it if not needed.

## Arguments

- docker workdir: `usr/app`
- python venv path: `usr/app/venv`
- volumes target: `usr/app/data`

## Workflows

- Originally I want to use Github Action to persist data but **it fails**. Just keep it without usage.
