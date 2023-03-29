# Используем node.js версии 14.x в качестве базового образа
FROM node:14

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json в рабочую директорию
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем файлы проекта в рабочую директорию
COPY . .

# Собираем проект
RUN npm run build

# Экспортируем порты для доступа извне
EXPOSE 3000
EXPOSE 4000

# Запускаем серверную часть
CMD ["npm", "run", "server"]

# Запускаем клиентскую часть
CMD ["npm", "run", "serve"]

