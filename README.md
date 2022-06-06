# nodejs-sample

這是一個利用 nodejs 製作 prometheus 指標的應用範例。

## 目錄

- [開發](./#開發)
- [正式](./#正式)

## 前置作業

```bash

```

## 建立鏡像

```bash
$ docker build -t prom-client . -f Dockerfile
```

## 啟動容器 

### 開發

```bash
$ docker run --name prom-client \
    -p 9300:9300 \
    -v $(pwd)/src:/usr/app/prom-client \
    -d prom-client npm run dev
```

### 正式

```bash
$ docker run --name prom-client \
    -p 9300:9300 \
    -d prom-client
```