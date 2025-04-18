1 задание

https://hub.docker.com/r/nik0801/custom-nginx
![image](https://github.com/user-attachments/assets/d91a40d5-0664-43cd-a5ba-8ea6f255463a)
2 задание

3 задание
![image](https://github.com/user-attachments/assets/3a9490d2-87f6-4f2f-bce7-0f0b84b9320d)
![image](https://github.com/user-attachments/assets/88469c46-3cd9-4911-acde-1d69a6328a09)
![image](https://github.com/user-attachments/assets/04256564-57b4-4108-8069-c626ee413524)

Контейнеры Docker предназначены для запуска одного главного процесса (PID 1). В данном случае таким процессом является Nginx. Когда вы нажимаете Ctrl+C, отправляется сигнал SIGINT, который останавливает главный процесс Nginx. Так как этот процесс является единственным активным процессом в контейнере, после его завершения контейнер автоматически прекращает работу.
![image](https://github.com/user-attachments/assets/f08ef6f5-5cef-4a25-830e-1b226a888128)
![image](https://github.com/user-attachments/assets/3878ee8a-49f8-46f1-b5da-5cdd00ee8043)
![image](https://github.com/user-attachments/assets/81cea2bb-2282-4be4-b9f4-9330bff04e39)

возникнет ошибка, потому что Docker перенаправляет запрос на порт 81 контейнера, а у нас Nginx настроен слушать только на внутреннем IP (127.0.0.1). Внешний интерфейс (host machine) пытается соединиться с контейнером по порту 8080, который транслируется на порт 81, однако наш Nginx больше не принимает запросы на этом интерфейсе

Конфигурация контейнера и Nginx изменилась так, что теперь Nginx слушает запросы только на внутреннем интерфейсе (127.0.0.1) на порту 81. Хост-машина обращается к порту 8080, который перенаправляется на порт 81 контейнера, но запросы приходят извне, и Nginx их отвергает, так как настроен слушать только внутренние запросы.

Удаление контейнера без его остановки
![image](https://github.com/user-attachments/assets/0b3474ff-c6a6-474f-b77a-6c391d2e0e8a)

Задача 4
![image](https://github.com/user-attachments/assets/ae6f2a60-29b9-49e8-8e57-5256e79995bc)
![image](https://github.com/user-attachments/assets/184511e9-fb0d-47f9-90e7-e570367609dc)
![image](https://github.com/user-attachments/assets/2729ea4f-5e85-4424-bf17-00c7b10b51c0)

Задача 5
![image](https://github.com/user-attachments/assets/05f61855-3a66-4eb5-bf72-06ca0dc5c150)

Compose также поддерживает docker-compose.yaml и docker-compose.yml Обратная совместимость предыдущих версий. Если оба файла существуют, Compose предпочитает канонический compose.yaml.

Выполните в консоли вашей хостовой ОС необходимые команды чтобы залить образ custom-nginx как custom-nginx:latest в запущенное вами, локальное registry:
![image](https://github.com/user-attachments/assets/5318fce1-6f1e-4abb-8da1-13e87897de5b)

Перейдите на страницу "http://127.0.0.1:9000/#!/2/docker/containers", выберите контейнер с nginx и нажмите на кнопку "inspect". В представлении <> Tree разверните поле "Config" и сделайте скриншот от поля "AppArmorProfile" до "Driver":
![image](https://github.com/user-attachments/assets/2a273723-fcee-4b90-b129-1dc7cee47e34)
![image](https://github.com/user-attachments/assets/a834c513-e424-4bcf-95f7-45f7ead045e8)
![image](https://github.com/user-attachments/assets/542f7199-dc0d-4a73-9d05-5a4d9d37e7fc)
предупреждение информирует о том, что в проекте остались "сиротные" контейнеры (контейнеры, соответствующие старым или удалённым службам). Для их удаления можно добавить флаг --remove-orphans к команде docker compose up.

![image](https://github.com/user-attachments/assets/5dfb8661-3c74-4b8a-b684-5ff9323be8d2)
![image](https://github.com/user-attachments/assets/e8e9f452-6172-4034-8157-12399c274881)
