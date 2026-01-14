## Задание 1. Создать сетевую политику или несколько политик для обеспечения доступа
- Создать deployment'ы приложений [frontend](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw10/manifest/frontend.yaml), [backend](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw10/manifest/backend.yaml) и [cache](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw10/manifest/cache.yaml) и соответсвующие сервисы.
- В качестве образа использовать network-multitool.
- Разместить поды в namespace App.
  <img width="821" height="156" alt="image" src="https://github.com/user-attachments/assets/9f49f0ca-dcd1-485d-8491-65186f12b004" />

  <img width="841" height="90" alt="image" src="https://github.com/user-attachments/assets/4a004bd4-b605-49d4-9959-eca30d923efc" />

- Создать политики [back-to-cach](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw10/manifest/back-to-cache.yaml), [front-to-back](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw10/manifest/front-to-back.yaml) и [deny-all](https://github.com/NIK0801/DevOps_netology/blob/main/Kubernetes/hw10/manifest/deny-all.yaml)  чтобы обеспечить доступ frontend -> backend -> cache. Другие виды подключений должны быть запрещены.
- <img width="880" height="97" alt="image" src="https://github.com/user-attachments/assets/e2e96449-1f0c-494e-9bad-92fc3cc07d7d" />

- Продемонстрировать, что трафик разрешён и запрещён.

- Захожу на под с приложением frontend и проверю, можно ли из него обратиться к приложению backend:  

```
microk8s kubectl exec -n app deploy/frontend -- curl backend
```  
<img width="197" height="47" alt="image" src="https://github.com/user-attachments/assets/56a9646f-40a7-413a-ae7b-fa5548a23282" />  

```
microk8s kubectl exec -n app deploy/backend -- curl cache
```
<img width="371" height="37" alt="image" src="https://github.com/user-attachments/assets/0077c679-76e7-4e23-8a19-16d96e4dcbba" />  

```
microk8s kubectl exec -n app deploy/frontend -- curl cache
```  
<img width="332" height="38" alt="image" src="https://github.com/user-attachments/assets/8133f5fb-c7aa-47cf-9aa8-747d4d3ae0fb" />
