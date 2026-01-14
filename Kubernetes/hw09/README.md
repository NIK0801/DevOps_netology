## Задание 1. Установить кластер k8s с 1 master node  
Подготовка работы кластера из 5 нод: 1 мастер и 4 рабочие ноды.  
```
# Отключаем swap
sudo swapoff -a
sudo sed -i '/ swap / s/^/#/' /etc/fstab

# Модули ядра
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

# Сетевые параметры
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

sudo sysctl --system
```
- В качестве CRI — containerd.  
Установка containerd (все ноды)  
```
sudo apt update
sudo apt install -y containerd

sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml

# ВАЖНО: SystemdCgroup = true
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' \
  /etc/containerd/config.toml

sudo systemctl restart containerd
sudo systemctl enable containerd
```
- Установка kubeadm / kubelet / kubectl
```
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key \
| sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] \
https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /" \
| sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt update
sudo apt install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
```

- Инициализация master-ноды:
```
kubeadm init \

--apiserver-advertise-address=10.0.90.13 \

--pod-network-cidr 10.244.0.0/16 \

--apiserver-cert-extra-sans=178.154.234.213 \

--control-plane-endpoint=cluster_ip_address
```
<img width="1462" height="971" alt="image" src="https://github.com/user-attachments/assets/882f9545-562a-44f2-8885-d0aedf55b88a" />  
<img width="725" height="427" alt="image" src="https://github.com/user-attachments/assets/a1643a17-adbb-4639-9247-9da656188ea2" />


- Установка calico  
  <img width="990" height="589" alt="image" src="https://github.com/user-attachments/assets/e5db4d34-898c-4a78-9903-593daaa436c4" />
  
- Подключение нод:
<img width="850" height="328" alt="image" src="https://github.com/user-attachments/assets/417f8dfb-1a19-4414-969c-8d932751de09" />

- Список нод (пришлось выключить 2 ноды, тк закончилосьдисковое пространство):
<img width="438" height="138" alt="image" src="https://github.com/user-attachments/assets/dff0edbd-d81a-4df6-b5dc-a5c00a021915" />
