# 使用官方 WordPress 映像
FROM wordpress:latest

# 安裝額外套件或自訂設定(可選)
# RUN apt-get update && apt-get install -y some-package

# 複製自訂主題或外掛(可選)
# COPY ./my-theme /var/www/html/wp-content/themes/my-theme

# 設定 WordPress 啟動時的環境變數(通常在 docker-compose.yml 設定)
