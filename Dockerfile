FROM python:3.10-slim

WORKDIR /app

# 의존성 설치
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 소스 복사
COPY . .

# 컨테이너 실행 시
# 1) pytest 실행
# 2) 성공하면 flask api 실행
CMD pytest && python app.py
