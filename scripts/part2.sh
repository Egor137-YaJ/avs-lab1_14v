#!/bin/bash
repo_url="https://github.com/Egor137-YaJ/avs-lab1_14v.git"

export LC_ALL=ru_RU.UTF-8
cd ~/lab0 || exit

cp opening_day victor/management/opening_copy
cp -r claude_monet archive/claude_backup

ln -s victor/kitchen/barinov_plan victor_menu

ln -s ../hall victor/reception/hall_access

ln victor/hall/guest_list victor/hall/guest_list_copy

cat victor/kitchen/max_dish victor/pastry/katya_dessert > victor/kitchen/tasting_menu
cat victor/reception/reservations >> victor/management/vika_schedule

mv claude_monet/farewell_note victor/management/farewell_note

git status
git add .
git status
git commit -m "Часть 2: добавлены символические/жесткие ссылки и перемещены/скопированы файлы"
git status
git push "$repo_url" main
