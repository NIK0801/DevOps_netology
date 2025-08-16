Задание 1  
<img width="974" height="386" alt="image" src="https://github.com/user-attachments/assets/66b0ee80-b141-4f03-81a8-df9579727c64" />  

---  
Задание 2  
<img width="974" height="462" alt="image" src="https://github.com/user-attachments/assets/786de719-8ea8-4ed4-b1dd-5ea507417404" />  

---  
Задание 3  
<img width="974" height="472" alt="image" src="https://github.com/user-attachments/assets/753e85dd-20d6-4ffb-b34c-61cdfa017c5a" />  

FS (свободное место в %):  
(node_filesystem_avail_bytes{fstype !~ "tmpfs|overlay", mountpoint="/"} / node_filesystem_size_bytes{fstype!~"tmpfs|overlay", mountpoint="/"}) * 100  
RAM (свободная память в %):  
(node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes) * 100  
CPU (загрузка в %):  
100 - (avg by(instance)(irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)  
Load Average (сравнение с количеством CPU):  
node_load1  

---  

Задание 4  
см файл dashboard.json

---
