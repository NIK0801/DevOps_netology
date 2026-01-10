## 1. Подготовить **[Helm-чарт](https://github.com/NIK0801/DevOps_netology/tree/main/Kubernetes/hw07/app-chart)** для приложения
   
  <img width="974" height="71" alt="image" src="https://github.com/user-attachments/assets/c918bae5-e380-47d1-b1be-9cee969f8e1a" />  

   , состоящего из:
   - [frontend](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw07/app-chart/templates/frontend-deployment.yaml),
   - [backend](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw07/app-chart/templates/backend-deployment.yaml),
   - [базы данных](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw07/app-chart/templates/db-statefulset.yaml),
   - [системы кеширования](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw07/app-chart/templates/cache-statefulset.yaml).
## 4. Каждый компонент должен деплоиться **отдельным Deployment или StatefulSet**.
## 5. Версии образов должны изменяться через **[values.yaml](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw07/app-chart/Values.yaml)**.
## 6. Проверить чарт, запустив:
   - две версии приложения в namespace `app1`,
     <img width="913" height="150" alt="image" src="https://github.com/user-attachments/assets/7129b34a-6f24-4770-9853-4da2d3c830ae" />  

     <img width="974" height="139" alt="image" src="https://github.com/user-attachments/assets/2c2c7783-58d9-4b3b-abdd-10c1ef441c32" />  
     <img width="974" height="196" alt="image" src="https://github.com/user-attachments/assets/2eb2e776-b5df-4f06-9109-b32bd6fef97c" />  


   - одну версию приложения в namespace `app2`.  

     <img width="974" height="199" alt="image" src="https://github.com/user-attachments/assets/2cbe0e95-6adf-4812-a1c6-fad316d0057f" />
     <img width="974" height="248" alt="image" src="https://github.com/user-attachments/assets/fe4b2442-44a2-4b27-be04-be75fa4a44b4" />
     <img width="974" height="536" alt="image" src="https://github.com/user-attachments/assets/a5677c70-1654-4b2a-987c-a4ed23e23a75" />



