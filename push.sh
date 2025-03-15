#!/bin/bash

# Проверяем, есть ли изменения
if [ -z "$(git status --porcelain)" ]; then
  echo "Нет изменений для коммита."
  exit 0
fi

# Добавляем все изменения
echo "Добавляем изменения..."
git add .

# Запрашиваем сообщение для коммита
echo "Введите сообщение для коммита:"
read commit_message

# Создаем коммит
echo "Создаем коммит..."
git commit -m "$commit_message"

# Отправляем изменения на GitHub
echo "Отправляем изменения на GitHub..."
git push origin main

echo "Готово! Изменения отправлены."