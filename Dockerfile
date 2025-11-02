# 使用官方 Python 基礎映像
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 複製 Flask 檔案到容器中
COPY app.py /app

# 安裝必要套件
RUN pip install flask gunicorn

# 開放 Cloud Run 預設埠
EXPOSE 8080

# 啟動 Flask 應用（使用 gunicorn）
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
