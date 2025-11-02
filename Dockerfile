 # 使用官方 Python 基礎映像
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 複製 Flask 檔案到容器中
COPY app.py /app

# 安裝 Flask
RUN pip install flask

# 設定環境變數
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# 開放 Flask 預設埠
EXPOSE 5000

# 啟動 Flask 應用
CMD ["flask", "run"]
