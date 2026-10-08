#!/bin/bash
repo_url="https://github.com/Egor137-YaJ/avs-lab1_14v.git"

export LC_ALL=ru_RU.UTF-8

mkdir ~/lab0
cd ~/lab0 || exit 
git init -b main

mkdir victor victor/kitchen victor/pastry victor/hall victor/reception victor/management
mkdir archive claude_monet

echo "Баринов проверяет кухню ресторана Victor
Лёва распределяет поваров по рабочим местам
Новое меню готовят к вечернему открытию" > victor/kitchen/barinov_plan

echo "Макс предлагает утку с новым соусом
Баринов разрешает приготовить пробную порцию
Блюдо подадут первым гостям ресторана Victor" > victor/kitchen/max_dish

echo "Катя готовит шоколадный десерт
Украшение собирают перед самой подачей
Элеонора ждёт результат дегустации" > victor/pastry/katya_dessert

echo "Первый стол оставлен для Элеоноры
Второй стол подготовлен для Нагиева
Большой стол займёт команда ресторана" > victor/hall/opening_tables

echo "Элеонора Андреевна прибывает к открытию
Дмитрий Нагиев приглашён на ужин
Денис выступает для гостей вечером" > victor/hall/guest_list

echo "Столик четыре забронирован на семь часов
Столик шесть нужен постоянным гостям
Вика подтверждает каждую бронь" > victor/reception/reservations

echo "Элеонора требует закончить подготовку вовремя
Зал должен быть готов до приезда гостей
Баринов лично представляет праздничное меню" > victor/management/eleonora_order

echo "Утром проверить работу кухни
Днём провести собрание официантов
Вечером встретить первых гостей" > victor/management/vika_schedule

echo "Луковый суп из Claude Monet
Мильфей от Луи
Фирменное мясо от Баринова" > archive/old_menu

echo "Команда прощается с рестораном Claude Monet
Старые рецепты сохраняются в архиве
Макс обещает не забывать первую кухню" > claude_monet/farewell_note

echo "Ресторан Victor открывается вечером
Баринов волнуется за новую команду
Вика проверяет последние приготовления" > opening_day

chmod 755 victor
chmod u=rwx,g=rx,o= victor/kitchen 
chmod 640 victor/kitchen/barinov_plan
chmod u=rw,g=r,o= victor/kitchen/max_dish
chmod 750 victor/pastry
chmod u=rw,g=r,o= victor/pastry/katya_dessert
chmod u=rwx,g=rx,o= victor/hall  
chmod 644 victor/hall/opening_tables
chmod u=rw,g=r,o=r victor/hall/guest_list
chmod 750 victor/reception
chmod 640 victor/reception/reservations
chmod u=rwx,g=rx,o= victor/management
chmod u=rw,g=r,o= victor/management/eleonora_order
chmod 640 victor/management/vika_schedule
chmod u=rwx,g=rx,o= archive  
chmod 644 archive/old_menu
chmod 755 claude_monet
chmod u=rw,g=r,o= claude_monet/farewell_note
chmod u=rw,g=r,o=r opening_day 

git status
git add .
git status
git commit -m "Часть 1: создано дерево каталогов lab0 и добавлены все нужные файлы и установлены права доступа к ним"
git status
git push "$repo_url" main




