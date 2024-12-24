# Benchmarking-openGauss-Against-PostgreSQL-A-Comparative-Analysis
<img src="./photo/polar_graph.png" alt="polar_graph" style="zoom:45%;" />

## DATASET and Testbench
DATABSET :https://www.kaggle.com/datasets/wyattowalsh/basketball/data

TestBench :sysbench

## DATABASE(implemented by docker)

### Pull Images

- Postgres:latest

  ```shell
  docker pull postgres
  ```

- Postgres:9.2

  ```shell
  docker pull postgres:9.2
  ```

- OpenGauss:3.1.1

  ```shell
  docker pull docker.1panel.live/enmotech/opengauss:3.1.1
  ```

### Create Docker

Here is a sample 

```dockerfile
docker run --name project3-opengauss --privileged=true \
	-d -e GS_PASSWORD=<!!!your db password!!!> \
	-v <!!!persist directory!!!>:/var/lib/opengauss -u root \
	-p 15432:5432 \
	docker.1panel.live/enmotech/opengauss:3.1.1
```

You just need to adjust some parameters if you like.

## Basic Experiments

### Brief Introduction

We did experiments on 

- DATABASE CREATE/DROP

  [DATABASE CREATE](./src/import.sql)

- DATA INSERT

- RETRIEVAL UPDATE/SELECT

- BI-CONDITIONAL SELECT

- Large-scale Insert From other Table

