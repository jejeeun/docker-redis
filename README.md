# docker 실행 (루트 경로)
docker compose up -d

# docker 중지, 삭제 (기존 데이터 다 날라감)
docker compose down -v

# 특정 redis 서버 중지
docker ps
docker stop {컨테이너 ID}

# 특정 redis 서버 재시작
docker ps
docker start {컨테이너 ID}

# 외부 프로젝트에서 사용하기
port=7617
