FROM python:3.11-slim

# Создаём рабочую директорию внутри контейнера
WORKDIR /app

# Копируем все файлы проекта
COPY . /app

# Устанавливаем зависимости, если есть requirements.txt
RUN pip install --no-cache-dir -r requirements.txt || true

# Запуск бота
CMD ["python", "licum.py"]
