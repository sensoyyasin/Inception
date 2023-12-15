# Docker 🐳
This project aims to broaden my knowledge of system administration by using Docker. 

## Docker Nedir?

- Docker en net tanımlamayla open source bir ‘container’ teknolojisidir. Docker, aynı işletim sistemi üzerinde, yüzlerce hatta binlerce birbirinden izole ve bağımsız containerlar sayesinde sanallaştırma sağlayan bir teknolojidir. Web uygulamalarımızın kolayca kurulumunu, testini, çalışmasını ve deploymentını sağlar. Bunun yanında sunucu maliyetlerini önemli ölçüde azaltır.

- Docker, birçok farklı platformda (Windows, Linux, macOS vb.) çalışabilir ve önceden oluşturulmuş konteyner imajlarına erişmek için Docker Hub gibi bir merkezi havuz sunar.

## Container Nedir:

- Docker Daemon tarafından Linux çekirdeği içerisinde birbirinden izole olarak çalıştırılan process’lerin her birine verilen isimdir. Virtual Machine (Sanal Makina) analojisinde Docker’ı Hypervisor’e benzetirsek fiziksel sunucu üzerinde halihazırda koşturulmakta olan her bir işletim sisteminin (sanal sunucunun) Docker’daki karşılığı Container’dır.
  
- Containerlar birbirinden izole çalışır. Containerlar, bir uygulamanın tüm bağımlılıklarını içeren bir paketleme teknolojisidir.(Kütüphaneler, sistem dosyaları, yazılım bileşenleri vb...)
  
## Image Nedir?

- Docker imajları docker konteynerlarının kaynak kodudur, Dockerfile docker imageları oluşturur.

- Containerlar layer halindeki Image’lardan oluşur. Docker Image ise containerlara kurulacak ve run edilecek olan uygulamaların veya OS’lerin image dosyalarıdır. Örnek verecek olursak mysql, mongodb, redis, ubuntu, mariadb..

# Örnek bir Dockerfile:

![Dockerfile](https://github.com/sensoyyasin/Inception/assets/73845925/47255089-cdcc-4d77-9e1f-f34f3b14ea4e)

# Dockerfile Syntax

<img width="777" alt="Ekran Resmi 2023-12-05 23 26 39" src="https://github.com/sensoyyasin/Inception/assets/73845925/445c510f-3ca8-46fa-b65c-c5dca5547dbd">

  
![dockerimage](https://github.com/sensoyyasin/Inception/assets/73845925/23630cb1-cf79-4567-9d0d-fb8b0d3a1176)

## Docker Compose Nedir?

- Compose, birden fazla containere sahip docker uygulamalarını tanımlamak ve çalıştırmak için kullanılır. Compose ile uygulamanızın servislerini configure etmek için bir YAML dosyası kullanılır. Ardından, tek bir komutla configure ettiğiniz ayarlar ile tüm servislerinizi oluşturup ve başlatabilirsiniz.

Compose kullanmak temel olarak üç adımlı bir işlemdir:

1 - Uygulamanızın ortamını Dockerfile dosyası ile herhangi bir yerde yeniden üretilebilecek şekilde tanımlayın.

2 - docker-compose.yml uygulamalarınızı izole ortamda beraber çalışacak şekilde yaml dosyası içinde set edebilirsiniz.

3 - docker-compose up komutuyla birlikte tüm uygulamanızı başlatır ve çalıştırabilirsiniz.

docker-compose.yml aşağıdaki gibidir:

<img width="213" alt="Ekran Resmi 2023-12-07 22 29 51" src="https://github.com/sensoyyasin/Inception/assets/73845925/7993ac24-3cdd-4557-8c45-d4d283915440">

![Ekran Resmi 2023-12-15 19 17 56](https://github.com/sensoyyasin/Inception/assets/73845925/8973321d-d661-41c1-ab68-69c5c8c4fe98)


## Docker avantajları nelerdir?

- Docker saniyeler içerisinde başlar, çünkü içerisinde barındırdığı her bir container sadece birer processtir. Böylece karşımıza lightweight bir yapı karşımıza çıkar. Bu da bizi sanal makinelerin hantallığından kurtarmış oluyor.

- Farklı İşletim Sistemlerine Destek Vermesi Docker Windows, Linux, MacOs gibi farklı işletim sistemlerine destek verir.

## Docker Nasıl çalışır?

- Docker’ın Linux Kernel’inden destek alarak ortaya çıkan ve Linux İşletim Sistemi üzerinde çalışan bir sistem. Peki nasıl oluyor da Docker Linux dışında hem Windows hem de Mac OS X’te kullanılabiliyor? Docker temel iki parçadan oluşmaktadır. Birincisi Linux Kernel’la direkt iletişim halinde olan Docker Daemon, ikincisi ise bu Daemon (Motor) ile iletişim kurmamıza olanak tanıyan Docker CLI (Command-Line Interface)’dır. Linux’ta hem Docker Daemon hem de Docker CLI doğal olarak direkt Linux üzerinde koşmaktadır. Windows ve Mac OS X’te ise Docker CLI Windows ve Mac OS X işletim sistemleri üzerinde koşmakta, Docker Daemon ise bu işletim sistemlerinde bir Hypervisor (duruma göre VMware, VirtualBox, Hyperkit, Hyper-V) yardımıyla çalıştırılan Linux üzerinde koşmaktadır.

## Docker Daemon (Docker Engine)

- Linux Kernel’inde bulunan LXC’nin yerini almıştır. İşlevi Container’ların birbirlerinden izole bir şekilde, Image’larda tanımlarının yapıldığı gibi çalışmaları için gerekli yardım ve yataklığı yani ortamı sağlamaktır. Container’ın bütün yaşam döngüsünü, dosya sistemini, verilen CPU ve RAM sınırlamaları ile çalışması vb bütün karmaşık (işletim sistemine yakın seviyelerdeki) işlerin halledildiği bölümdür.

## Docker vs Virtual Machine

- Docker open source bir sanallaştırma teknolojisidir. Ama bildiğimiz klasik sanal makinelerden (Hypervisor, VMware) biraz farklı olarak sanallaştırma yapar. Bunun nedeni ise sanal makinelerde bulunan hypervisor katmanının bulunmaması ve container dediğimiz birbirinden tamamen bağımsız ve izole processlerden oluşmasıdır. Docker üzerinde host edildiği tek bir OS(İşletim sistemi) üzerinde yüzlerce ve binlerce docker conteiner çalışabilir ve bu conteinerlar sistem dosyalarını paylaşımlı olarak kullandıkları için kaynak tüketimleri oldukça düşük olduğu için maliyetleri düşüktür.

- Sanal makine sistemlerinde, her bir sanal makine kendi işletim sistemini kullanılır ve kendi kütüphaneleri vardır. Aslında az çok hepimiz VMware kullanmışızdır. Örneğin Windows makinemizde MacOs işletim sistemini koşturmak istersek VMware ile bunu sağlayabiliyoruz. Ama farkettiyseniz bu sizin için maliyetli olur çünkü kaynak tüketimi fazladır, çünkü tamamen farklı bir işletim sistemini ayağa kaldırırsınız ve de açılış hızı yavaştır; bir süre beklemek zorunda kalırsınız. Fakat Docker teknolojisi, contenierları çalıştımak için üzerinde host edildiği tek bir işletim sistemine bağlıdır, kaynak tüketimi azdır. Ayrıca conteinerlar saniyeler içinde kullanıma hazır hale geliyor

# VM (Virtual Machine)

OS : Tam işletim sistemi

İzolasyon : Yüksek

Çalışır hale gelmesi : Dakikalar

Versiyonlama : Yok

Kolay paylaşılabilirlik : Düşük

# Docker

OS : Küçültülmüş işletim sistemi imajı

İzolasyon : Daha düşük

Çalışır hale gelmesi : Saniyeler

Versiyonlama : Yüksek

Kolay paylaşılabilirlik : Yüksek

# Memory usage difference

![memory](https://github.com/sensoyyasin/Inception/assets/73845925/ac60709a-77ba-43d1-a9d6-3bd51ac10de0)

![a](https://github.com/sensoyyasin/Inception/assets/73845925/d8d9c80f-8e74-4142-8bee-21cf07f5551d)


