# TestWorkYadro
## Задание:
### • Соберите любой питоновский модуль в RPM-пакет для Oracle Linux 8.4 и DEB-пакет для 
### Ubuntu 20.04. Примером модулей является https://pypi.org/project/argcomplete/.
### • Просим собирать только те модули, которые не представлены в RPM-пакетах у Oracle 
### Linux и DEB-пакетах у Ubuntu. Поэтому после выбора модуля проверьте, что его еще нет 
### в дистрибутиве как пакета!
### • Настройте сборку пакета в docker контейнере.
### • Настройте автоматическую сборку пакета по коммиту в таких системах как GitLab-CI/CD 
### или GitHub Actions, на ваш выбор.
### • Можете использовать любые инструменты сборки.
### Пришлите нам ссылку на ваш репозиторий
## Проделанная работа:
### Был создан docker-compose файл, запускающий 2 контейнера на базе операционных систем Ubuntu 20.04 и Oracle Linux 8.4, также был создан github actions, запускающий контейнеры со сборщиками при push/pull request на репозиторий
### Контейнеры получают питоновский модуль (был взял prometheus flask exporter) и создают из него deb пакет для Ubuntu и rpm пакет для Oracle Linux соответвеноо, предварительно в контейнеры устанавливаются все необходимые модули для сборщика
### В качестве сборщиков были использованны stdeb для deb и fpm для rpm
### Исходные архивы с модулями находятся в /source/{deb/rpm}/files
### Готовые пакеты после завершения работы контейнеров со сборщиками находятся в директории readypackets при локальном запуске docker-compose
### Готовые пакеты после сборки посредством GitHub Actions находятся в Artifacts раздел actions/worflows/название коммита 
