**Задание 1**  
Создать Deployment приложения, состоящего из двух контейнеров и обменивающихся данными.  

- Создать [Deployment](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw04/shared-volume-deployment.yaml) приложения, состоящего из контейнеров busybox и multitool.
  <img width="974" height="52" alt="image" src="https://github.com/user-attachments/assets/034462a9-0b9b-4126-85f7-80bc422b6b83" />
  <img width="974" height="105" alt="image" src="https://github.com/user-attachments/assets/967e0b3d-33b8-4c0b-9fd9-35b819a5209c" />
- Сделать так, чтобы busybox писал каждые пять секунд в некий файл в общей директории.  
- Обеспечить возможность чтения файла контейнером multitool.  
- Продемонстрировать, что multitool может читать файл, который периодоически обновляется.
  <img width="974" height="181" alt="image" src="https://github.com/user-attachments/assets/e73fc775-05c7-40f0-9456-88c3533e0499" />
- Предоставить манифесты Deployment в решении, а также скриншоты или вывод команды из п. 4.  

**Задание 2**  
Создать DaemonSet приложения, которое может прочитать логи ноды.  

- Создать [DaemonSet](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw04/daemonset-read-logs.yaml) приложения, состоящего из multitool.  
- Обеспечить возможность чтения файла /var/log/syslog кластера MicroK8S.  
- Продемонстрировать возможность чтения файла изнутри пода.
  <img width="974" height="300" alt="image" src="https://github.com/user-attachments/assets/b04f8985-f0d1-45de-bdd6-deb33345bd43" />

- Предоставить манифесты Deployment, а также скриншоты или вывод команды из п. 2.  
