# inception
introduction to inception

I**mportant Terminologies in Docker**

**Docker en basit ifadesiyle uygulamaların en hızlı şekilde bir araya getirilmesine**, test edilmesine ve dağıtma işlemlerinin gerçekleştirilmesine imkan sunan yazılım platformudur.

1- Docker Image

Used to execute code in a Docker container.

• They are a set of instructions used to create docker containers. (Konteyner oluşturur.)

Çalıştırılması planlanan uygulamaların paket haline getirilmiş şekli olmaktadır. Konteyner ise paket haline getirilen image’lerin çalıştırılacağı alanı ifade eder.

2- Docker Container

• Allows developers to package applications with all parts needed such as libraries and other dependencies.


**3. Docker file**

Docker image üretir. image üretmek amacıyla kullanılan “***Config***” dosyasına verilen isimdir.

4- **Docker Hub**

Image’lerin paylaşımının yapıldığı ve saklandığı depo özelliğindedir. Docker Hub için, image deposu ifadesi kullanılmaktadır.

5 - Docker engine

Bir linux çekirdeği üzerinde çalışmasını gerçekleştirmektedir.

6- Docker daemon

Docker Daemon’un amacı, konteynerların birbirinden izole olarak çalışmalarını yürütmelerine destek olmaktır.

7- **Docker Machine**

Birden çok host’ları oluşturma ve yönetme görevini gerçekleştirmektedir.

8 - Docker Compose

Docker Compose, **Docker tarafından sağlanan bir araçtır ve birden fazla Docker konteynerını bir arada koordine etmek için kullanılır**. Tek dosyadan tüm dosya kontrolü sağlanır. Docker Compose tek komut ile uygulamanın ihtiyacı olan tüm gereksinimleri harekete geçirerek uygulamayı çalıştırmaktadır. Docker Compose aracılığıyla birden çok konteyner çalıştırılırken, mevcut konteynerlardan seçili olanların birbirlerine bağımlı kalması da sağlanmaktadır.

- “**Env**” komutu ile beraber, genel değişkenlerin atamaları yapılır.
- “**From**” komutu aracılığıyla, “Base image” dosyası referans olarak belirlenir.
- “**Run**” komutu ve konteyner ile beraber “**Build**” zamanında yapılması gerekli işlemler tanımlanır.
- “**Expose**” komutu ile sanallaştırılmış **Docker Network** içerisinde kullanılacak olan port’lar tanımlanıp, son olarak “**Cmd**” komutu ile konteyner çalıştırılır ve işleme alınacak tüm komutların tanımlaması yapılır.

Docker Engine

Docker Engine is a client-server based application.

- The docker engine has **3 main** components:
    - **Server**: It is responsible for creating and managing Docker images, containers, networks, and volumes on the Docker. It is referred to as a daemon process. Docker deamon
    - **REST API**: It specifies how the applications can interact with the Server and instructs it what to do.
    - **Client**: The Client is a docker command-line interface (CLI), that allows us to interact with Docker using the docker commands.
    
    YAML
    
    Docker-compose.yml ‘ de ilk satır version olmak zorundadır. Docker compose bunu zorunlu tutuyor.
    
    → Dosyanın ikinci satırındaki services, çalışacak uygulamaları belirttiğimiz kısımdır. Biz burada ElasticSearch ve Kibana servisleri ile çalışacağımızı belirtiyoruz.
    
    → Daha sonra bu servisler içerisinde hangi volume’ların kullanılacağını, Image’leri, dışarıya açılacak port’ları tanımlayabiliriz. Biz burada ElasticSearch için Image kısmında ElasticSearch’ün 7.0.0 Image’ini, Kibana için de aynı şekilde 7.0.0 sürümünü kullanacağımızı belirtiyoruz. Devamında da yeni bir alt özellik olarak servislerimizin port’larını belirtiyoruz. ElasticSearch için 9200 numaralı port’unu dışarıya 9200 port’u üzerinden açacağımızı belirtiyoruz. Aynı şekilde Kibana’yı da 5601 port’u üzerinden açacağımızı belirtiyoruz.
    
    • **Docker Compose Çalıştırmak**
    
   <img width="696" alt="Ekran Resmi 2023-11-03 21 38 14" src="https://github.com/sensoyyasin/inception/assets/73845925/6f7971db-9fcb-46e6-a823-cf0f0818c556">
  
    
    • **Docker-Compose.yml Komutları**
    
    1 - docker-compose build: docker-compose.yml dosyasında yaratılan servisleri build eder.
    
    docker-compose build<service_name> komutu ile belirlenen bir servisi build eder.
    
    2- docker-compose up: docker-compose.yml dosyasını çalıştırır ve servisleri ayağa kaldırır.
    
    3- docker-compose logs: docker compose loglarına erişebilirsiniz.
    
    4-docker-compose down: Docker Compose’u tetiklediğimiz docker-compose.yml dosyasının bulunduğu path’e gidip bu komutu çalıştırırsak çalışan Container’ları sonlandırırız.
