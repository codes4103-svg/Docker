# 使用官方 Anaconda 映像
FROM continuumio/anaconda3

# 設定工作目錄
WORKDIR /workspace

# 複製你的 Jupyter Book 專案(如果有)
# COPY ./mybook /workspace/mybook

# 更新 pip 並安裝 jupyter-book,忽略 root 使用者警告
RUN pip install --upgrade pip \
    && pip install jupyter-book --root-user-action=ignore

# 開放 port 8000 給外部訪問
EXPOSE 8000

# 預設啟動 Jupyter Book(假設你的書本在 mybook 資料夾)
CMD ["jupyter-book", "serve", "mybook", "--port", "8000", "--watch"]
