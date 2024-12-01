# Hello HWID : Windows Lisanslama Aracı

## **Amaç**
Bu araç, Windows işletim sisteminin lisanslama işlemini kolaylaştırmak için geliştirilmiştir. Araç, sistemdeki donanım kimliğini (HWID) kullanarak Windows lisansının etkinleştirilmesini sağlar. Windows lisanslama işlemi, genellikle Microsoft'un aktivasyon sunucuları üzerinden gerçekleştirilir ve bu araç, ilgili süreci otomatikleştirir.

---

## **Genel İşleyiş**

### **1. Donanım Kimliği (HWID) Elde Etme**
- Araç, sistemin benzersiz donanım kimliğini (HWID) tanımlar.
- Bu işlem, Windows Management Instrumentation Command-line (WMIC) veya benzeri bir yöntem kullanılarak gerçekleştirilir.
- HWID, cihazın benzersiz bir özelliği olup, Microsoft'un lisanslama mekanizmasında kullanılan temel parametrelerden biridir.
- Güncel cihaz üreticileri, Microsoft ile yaptıkları anlaşmalar doğrultusunda, cihazların donanım kimlikleri (HWID) üzerinden otomatik lisanslama sağlayabilir. Bu sayede, cihazın donanım bilgileri Microsoft'un aktivasyon sunucularına iletilerek, işletim sistemi lisansı üretici tarafından önceden tanımlanmış olur ve kullanıcıdan ek bir işlem yapması gerekmez.

---

### **2. Lisans Durumu Kontrolü**
- Araç, Windows'un mevcut lisans durumunu sorgular.
- Eğer sistem zaten etkinleştirilmişse, araç bu bilgiyi kullanıcıya bildirir ve işlemi sonlandırır.
- Lisans etkin değilse, aktivasyon sürecine geçilir.

---

### **3. Lisans Aktivasyonu**
- Araç, donanım kimliğini kullanarak bir lisanslama sunucusuna bağlanır.
- Bu işlem sırasında aşağıdaki adımlar gerçekleştirilir:
  1. Aktivasyon sunucusu ile bağlantı kurulur.
  2. HWID ile lisans anahtarı oluşturulur.
  3. Lisans anahtarı doğrulanır.
  4. Windows sistemine uygun olan lisans işlemleri uygulanır.
  5. Aktivasyon tamamlanır ve sonuç kullanıcıya iletilir.

---

## **Detaylı İşlem Açıklamaları**

### **Donanım Kimliği ve Aktivasyon**
- HWID, bir cihazın işlemci, anakart ve diğer donanım bileşenlerinin özelliklerini içeren bir benzersiz kimliktir. Bu kimlik, Microsoft tarafından lisans doğrulama işlemlerinde kullanılır.
- Lisans aktivasyonu, HWID bilgisi ile lisanslama sunucusuna bağlanılarak gerçekleştirilir. Aktivasyon tamamlandığında, Windows işletim sistemi "etkinleştirilmiş" durumuna geçer.

### **Lisanslama Sunucusu ve Güvenlik**
- Aktivasyon işlemi sırasında, lisanslama sunucusuna yalnızca gerekli minimum bilgi gönderilir.
- Araç, kullanıcı gizliliğini koruyacak şekilde tasarlanmıştır. Herhangi bir kişisel bilgi paylaşılmaz.

---

## **Kullanım Senaryoları**
- **Yeni Sistem Kurulumları:** Windows işletim sisteminin kurulumundan sonra etkinleştirilmesi için kullanılabilir.
- **Donanım Değişiklikleri:** Donanım değişikliği sonrası lisansın yeniden etkinleştirilmesi gerektiğinde yardımcı olur.
- **Lisans Sorunlarının Giderilmesi:** Lisans etkinleştirme ile ilgili sorunların otomatik çözümü için kullanılabilir.

---



## **Destek ve Geri Bildirim**

Alacağınız hataların çoğunluğu programın **`Yönetici Olarak`** çalıştırılmamasından kaynaklanabilir. **`Yönetici Olarak`** programı çalıştırmak hata alınmamasını sağlayabilir.
Eğer araçla ilgili bir sorun yaşarsanız veya geri bildirimde bulunmak isterseniz, lütfen bir GitHub Issue açarak bizimle iletişime geçin.
