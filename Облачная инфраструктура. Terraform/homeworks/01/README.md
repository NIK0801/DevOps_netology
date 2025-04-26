terraform --version  
![изображение](https://github.com/user-attachments/assets/844e0478-4f39-4612-b417-6a554f03eb60)  
**задание 1-2**  
Единственный безопасный файл для хранения личных секретов в проекте — это personal.auto.tfvars. Данный файл специально отмечен в .gitignore, что предотвращает его попадание в репозиторий Git.
Терраформ автоматически прочитает этот файл при выполнении команд, если он существует в текущем каталоге проекта (т.к. имеет расширение auto.tfvars).  
**Задание 1-3**  
В блоке "sensitive_attributes":  
"bcrypt_hash": "$2a$10$XTo2LBQ6/hT0fzihF3grBeNN/JNY3mEuKrHMj1e1GhmEe4IQEh6ZG"  
"result": "a1HwRoQ1x8Dzj8fU"  
**Задание 1-4**  
1 ошибка - отсутствует имя ресурса "docker_image". 2 ошибка - имя ресурса "docker_container" начинается с цифры, что недопустимо.3 ошибка - несуществующий ресурс = random_string_FAKE.resulT.  
**Задание 1-5**  
```
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "example_${random_password.random_string.result}"

  ports {
    internal = 80
    external = 9090
  }
}
```    
docker ps  
![изображение](https://github.com/user-attachments/assets/5f7d1d2f-eb69-4737-bd54-c07bac4dcc2f)  

**Задание 1-6**  
terraform apply -auto-approve  
docker ps  
![изображение](https://github.com/user-attachments/assets/657bf783-39f8-458a-8563-cfe22ae8dbf8)  
Ключ -auto-approve подавляет интерактивный запрос утверждения изменений, и Terraform автоматически выполняет запланированные изменения без дополнительного подтверждения пользователя.  
Это удобно для автоматизации, но опасно, если используется в производственном окружении или без глубокого понимания планируемых изменений. Например, можно случайно разрушить важный ресурс или применить неоптимальные изменения, не осознавая последствий.  

Ключ -auto-approve удобен в ситуациях, когда нужно автоматизированно применять изменения, например, в CI/CD системах или сценариях развертывания. 
Он ускоряет процесс и устраняет необходимость ручного вмешательства оператора.  

**Задание 1-7**  
terraform destroy  

```
nikita@Sword-15-A11UE:~/ter-homeworks/01/src$ cat terraform.tfstate
{
  "version": 4,
  "terraform_version": "1.8.5",
  "serial": 13,
  "lineage": "0bb66508-0e7a-4428-4cf2-be510efd6ba1",
  "outputs": {},
  "resources": [],
  "check_results": null
}
```
**Задание 1-8**  
```
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}
```  
keep_locally (Boolean) If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.


**Задание 2-6**  
![изображение](https://github.com/user-attachments/assets/59a42703-5f13-4318-ba06-a7e2ce3b4491)  


main.tf  
provider.tf  
variables.tf  
