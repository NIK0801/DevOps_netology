**Домашнее задание к занятию «Запуск приложений в K8S»**  

Задание 1.  
- Создать [Deployment](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw02/deployment.yaml) приложения, состоящего из двух контейнеров — nginx и multitool.
- После запуска увеличить количество реплик работающего приложения до 2.  
<img width="974" height="62" alt="image" src="https://github.com/user-attachments/assets/5d0304c7-e4e2-4e93-a2f3-431b06995459" />
<img width="974" height="120" alt="image" src="https://github.com/user-attachments/assets/b29e6899-4ae9-425a-9164-18cd6b683d10" />  

<img width="974" height="195" alt="image" src="https://github.com/user-attachments/assets/59bc9432-0dff-4370-8e7f-d9a23f358a34" />  
Создать [Service](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw02/service.yaml), который обеспечит доступ до реплик приложений из п.1.  
Создать [отдельный Pod](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw02/test-pod.yaml) с приложением multitool и убедиться с помощью curl, что из пода есть доступ до приложений из п.1.  
<img width="974" height="589" alt="image" src="https://github.com/user-attachments/assets/8d4a8ecd-3b98-408c-9e5f-236794903932" />  

Задание 2.  
- Создать [Deployment](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw02/deployment-init.yaml) приложения nginx и обеспечить старт контейнера только после того, как будет запущен сервис этого приложения.  
- Убедиться, что nginx не стартует. В качестве Init-контейнера взять busybox.
  <img width="974" height="147" alt="image" src="https://github.com/user-attachments/assets/412b7b0d-7a04-45f2-8566-3898a32af9c6" />
  <img width="974" height="194" alt="image" src="https://github.com/user-attachments/assets/e560a70a-f8d3-4645-8809-3c5665d37b29" />  

- Создать и запустить Service. Убедиться, что Init запустился.
<img width="974" height="64" alt="image" src="https://github.com/user-attachments/assets/526d8e73-e6c7-416d-8d99-0975140420e2" />  
<img width="974" height="130" alt="image" src="https://github.com/user-attachments/assets/9f2f9486-8b83-458c-a80f-cd95d77b4560" />  

- Продемонстрировать состояние пода до и после запуска сервиса.
  <img width="974" height="92" alt="image" src="https://github.com/user-attachments/assets/ae39863e-a65e-49b6-802d-566960207d4b" />
