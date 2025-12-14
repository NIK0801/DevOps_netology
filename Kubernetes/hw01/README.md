**Задание 1. Создать Pod с именем hello-world**  

Создать манифест (yaml-конфигурацию) Pod. [hello-world-pod.yaml](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw01/hello-world-pod.yaml)  

Использовать image - gcr.io/kubernetes-e2e-test-images/echoserver:2.2.  

Подключиться локально к Pod с помощью kubectl port-forward и вывести значение (curl или в браузере).  
<img width="974" height="671" alt="image" src="https://github.com/user-attachments/assets/b833aa75-34c4-4a7f-9460-08a9928ba08a" />  



**Задание 2. Создать Service и подключить его к Pod**  

Создать Pod с именем netology-web. [netology-web-pod.yaml](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw01/netology-web-pod.yaml)  

Использовать image — gcr.io/kubernetes-e2e-test-images/echoserver:2.2.  

Создать Service с именем netology-svc и подключить к netology-web. [netology-svc.yaml](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw01/netology-svc.yaml)  

Подключиться локально к Service с помощью kubectl port-forward и вывести значение (curl или в браузере).  
<img width="623" height="95" alt="image" src="https://github.com/user-attachments/assets/aa41ac29-ca7f-48ff-9b5b-d70f7bbb56d6" />  

<img width="974" height="612" alt="image" src="https://github.com/user-attachments/assets/7962c174-06ef-44cc-9a05-da6b92469885" />
