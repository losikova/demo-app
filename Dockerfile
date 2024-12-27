# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы в контейнер
COPY requirements.txt requirements.txt
COPY app.py app.py

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Открываем порт 8080 (заменили на 8080)
EXPOSE 8080

# Запускаем приложение
CMD ["python", "app.py"]