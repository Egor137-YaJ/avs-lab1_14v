#!/bin/bash
repo_url="https://github.com/Egor137-YaJ/avs-lab1_14v.git"

export LC_ALL=ru_RU.UTF-8
cd ~/lab0 || exit

echo "4.1"
ls -lR ~/lab0 | grep '^-' | grep -v 'copy' | sort -k5 -n -r | head -n 5

echo "4.2"
grep -r -h -i -e 'баринов' -e 'victor' victor archive | grep -v -i 'стар' | sort -r | head -n 6

echo "4.3"
grep -l -r -i -e 'макс' -e 'кухн' victor/kitchen archive/claude_backup | wc -l

echo "4.4"
{ head -q -n 1 victor/hall/opening_* victor/hall/guest_????; tail -q -n 1 victor/hall/opening_* victor/hall/guest_????; } | grep -i -e 'гост' -e 'стол' | sort

echo "4.5"
grep -v -i 'десерт' victor/kitchen/tasting_menu | grep -i -e 'макс' -e 'блюд' | sort -r | wc -w

echo "4.6"
ls -lR ~/lab0 | grep '^-......... 2 ' | sort -k9,9 -r

echo "4.7"
ls -lR ~/lab0 | grep '^l' | sort -k9,9 | head -n 1

echo "5->"
rm victor/management/opening_copy
rm victor_menu
rm victor/reception/hall_access
rm victor/hall/guest_list_copy
rm victor/management/farewell_note
rmdir claude_monet
rm archive/old_menu
rm -r archive/claude_backup

git status
git add .
git status
git commit -m "Часть 3: Сортировка + удалены файлы и ссылки"
git status
git push "$repo_url" main
