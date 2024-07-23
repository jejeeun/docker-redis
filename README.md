# docker-compose.yml 실행 (루트 경로)
docker-compose up -d

# docker container 실행 확인
docker ps

# docker 중지, 삭제 (기존 데이터 다 날라감, 비권장)
docker compose down -v

# docker 재시작(Redis AOF, 스냅샷 설정 시 데이터 유지)
docker-compose restart

# 외부 프로젝트에서 사용하기
# 클러스터 모드가 지원되는 클라이언트에서 6300, 6301, 6302, 6400, 6401, 6402 중 하나에 연결하면 정상 작동해야함