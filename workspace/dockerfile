# 使用官方 Node.js 映像作為基礎
FROM node:18

# 設定工作目錄
WORKDIR /app

# 複製 package.json 和 package-lock.json（如果有）
COPY package*.json ./

# 安裝依賴
RUN npm install

# 複製應用程式原始碼
COPY . .

# 開放應用程式使用的 port（例如 3000）
EXPOSE 3000

# 啟動應用程式（假設是用 npm start）
CMD ["npm", "start"]

