# Домашнее задание к лекции «Docker»

## `Порядок работы`


1. В терминале выполняем команду

>   `docker image build . --tag=prog:1.0`
   
   создается докер-образ (`prog` - название образа, `1.0` - версия, можно записать любые)
2. В терминале выполняем команду

>   `docker run -d -p 7711:5050 prog:1.0`
   
   запускается контейнер `IMAGE prog:1.0`, ему присваивается `CONTAINER ID` и `NAMES`. 
   Номер порта(в нашем случае `7711`) можно записать любой. Номер порта `5050` определен в 
   файле [Dockerfile](Dockerfile)
3. Проверить работающий контейнер можно командой 

   `docker ps`
4. Проверить работу приложения можно в браузере по адресу 

   `localhost:7711/`
5. Можно зайти в админ-панель приложения и добавить-убавить записи в бд и т.п. 
по адресу 
   `localhost:7711/admin/` логин-пароль: admin-admin
   
Далее можно практиковаться в запуске контейнеров по следующей схеме:
   * п.1 меняем версию (в нашем случае `1.0` на например `1.1`)
   * п.2 меняем порт (в нашем случае `7711`на например `7712`) и версию (в нашем случае `1.0`на версию из п.1))
   * п.3, п.4, п.5 (с соответствующим портом из п.2)

## Задание 2

Создайте контейнер для REST API сервера любого вашего проекта из курса по Django (например, [CRUD: Склады и запасы](https://github.com/netology-code/dj-homeworks/tree/drf/3.2-crud/stocks_products)).

> **ВАЖНО**: поменяйте БД с postgresql на sqlite3. Чтобы ваш контейнер мог работать без зависимости от postgres (с этим мы разберемся на следующем занятии).

Проверьте конфигурацию Django на использование переменных окружения (environment).

- Приложите в репозиторий Dockerfile и файлы приложения.
- В README.md описать типовые команды для запуска контейнера c backend-сервером.

> Для проверки работоспособности вашего контейнера отправляйте запросы с помощью `VS Code REST Client` или `Postman`.