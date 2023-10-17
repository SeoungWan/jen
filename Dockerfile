FROM ubuntu:latest
LABEL maintainer="hsw"
LABEL contact="qak8883@naver.com"
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

# 패키지 업데이트와 nginx 설치를 동일한 RUN 명령으로 실행
RUN apt-get update && apt-get install -y curl nginx
# index.html 파일을 복사
COPY index.html /var/www/html/index.html

# nginx 서비스 시작
CMD [ "nginx", "-g", "daemon off;"]

# 포트 80을 외부에 노출
EXPOSE 80
