# Docker Redis Cluster

Docker Compose를 이용한 Redis 클러스터 구성 (마스터 3 + 레플리카 3)

## 구성

| 노드 | 포트 | 역할 |
|------|------|------|
| redis-node1 | 6300 | Master |
| redis-node2 | 6301 | Master |
| redis-node3 | 6302 | Master |
| redis-node4 | 6400 | Replica (of 6300) |
| redis-node5 | 6401 | Replica (of 6301) |
| redis-node6 | 6402 | Replica (of 6302) |

## 사용법

### 실행
```bash
docker-compose up -d
```

### 실행 확인
```bash
docker ps
```

### 재시작 (AOF, 스냅샷 설정 시 데이터 유지)
```bash
docker-compose restart
```

### 중지 및 삭제 (데이터 삭제됨)
```bash
docker-compose down -v
```

## 외부 프로젝트에서 연결

클러스터 모드를 지원하는 Redis 클라이언트에서 6300, 6301, 6302, 6400, 6401, 6402 중 하나에 연결

## 주요 설정

- Redis 7 Alpine 이미지
- 비밀번호: `redis`
- AOF 영속성 활성화
- RDB 스냅샷 활성화
- Eviction 정책: `volatile-lru`
- 노드 타임아웃: 3000ms
