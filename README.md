# TMA Tests

Песочница для тестовых Telegram Mini Apps на GitHub Pages.

## Структура

- `index.html` — лендинг со ссылками на приложения
- `app1/` — демо темы Telegram (CSS-переменные, header color)
- `app2/` — данные пользователя (`initDataUnsafe`), haptic feedback

## Деплой на GitHub Pages

1. Создайте репозиторий на GitHub (например, `tma-tests`) и запушьте:

   ```bash
   git init
   git add .
   git commit -m "init"
   git branch -M main
   git remote add origin git@github.com:<username>/tma-tests.git
   git push -u origin main
   ```

2. **Settings → Pages → Source**: ветка `main`, папка `/ (root)`, Save.

3. Через минуту-две приложения будут доступны:

   ```
   https://<username>.github.io/tma-tests/
   https://<username>.github.io/tma-tests/app1/
   https://<username>.github.io/tma-tests/app2/
   ```

## Привязка к боту

В @BotFather:

1. `/newbot` — создать бота (если нет)
2. `/newapp` → выбрать бота → задать короткое имя → вставить URL приложения
3. Открыть через кнопку меню или ссылку `https://t.me/<bot_username>/<app_short_name>`

## Добавление нового приложения

1. Создайте папку `appN/index.html`, подключите SDK:

   ```html
   <script src="https://telegram.org/js/telegram-web-app.js"></script>
   ```

2. Добавьте карточку-ссылку в `index.html`
3. Commit + push — GitHub Pages обновится сам

## Нюансы

- Данные пользователя и темы работают **только внутри клиента Telegram**; в обычном браузоре `initDataUnsafe` пуст.
- Pages кэширует — после пуша подождите 1–2 минуты.
- Если приложение на Vite/React — публикуйте сборку из `dist/` и ставьте `base: '/tma-tests/'`.
