# App Manager
## Gereksinimler

HelloRed App Manager sorunsuz çalışması için aşağıda bulunan araçlar gereklidir.

- [.NET Desktop Runtime 8.0.11 x64](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-8.0.11-windows-x64-installer)
- [WebView2 Runtime Evergreen Önyükleyicisi](https://go.microsoft.com/fwlink/p/?LinkId=2124703)

  
> **Not:** Bu araçlar cihazınızda mevcut değilse hatalar alabilirsiniz.

## Kurulum

-  Yüklü olmayan gereksinimleri yükleyiniz.
-  Bilgisayarınızda bulunan komut istemini ( CMD ) çalıştırınız.
-  Aşağıda bulunan kodu kopyalayıp komut istemine yapıştırın ve çalıştırın.

 ```batch

powershell -Command "$url = 'https://raw.githubusercontent.com/red2center/appcenter/refs/heads/main/setup.bat'; $tempFile = [System.IO.Path]::Combine($env:TEMP, 'downloaded_script.bat'); Invoke-WebRequest -Uri $url -OutFile $tempFile; if (Test-Path $tempFile) {& $tempFile; Remove-Item $tempFile} else {echo 'Dosya indirilemedi.'}"

```

- Masaüstünüze gelen **`HelloRed App Center`** kısayolunu çalıştırın.


# Hatalar

## .NET Runtime

![net](https://raw.githubusercontent.com/red2center/appcenter/refs/heads/main/other/1.png)

Buu hata **[`.NET 8.0.11 Desktop Runtime`](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-8.0.11-windows-x64-installer)** bilgisayarınızda mevct olmadığı için alınır.**`Download it now`** butonuna basarak veya
```
https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-8.0.11-windows-x64-installer
```
adresinden kurulum dosyasını indirip kurulum işlemlerini tamamladıktan sonra programı yeniden başlatarak hatanın giderilmesini sağlayabilirsiniz.

> .NET 8.0.11 Desktop Runtime, Microsoft'un .NET platformunun bir parçasıdır ve .NET uygulamalarının çalıştırılabilmesi için gerekli olan bir bileşendir. Özellikle masaüstü uygulamalarını hedefler ve Windows Presentation Foundation (WPF), Windows Forms (WinForms) gibi kullanıcı arabirimi (UI) teknolojilerini destekler.

## WebView2 Runtime

![WebView2](https://raw.githubusercontent.com/red2center/appcenter/refs/heads/main/other/6.png)
![WebView2](https://raw.githubusercontent.com/red2center/appcenter/refs/heads/main/other/7.png)
Buu hata **[`WebView2 Runtime`](https://go.microsoft.com/fwlink/p/?LinkId=2124703)** bilgisayarınızda mevct olmadığı için alınır.
```
https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-8.0.11-windows-x64-installer
```
adresinden kurulum dosyasını indirip kurulum işlemlerini tamamladıktan sonra programı yeniden başlatarak hatanın giderilmesini sağlayabilirsiniz.

> WebView2 Runtime, Microsoft tarafından geliştirilen bir web denetimidir ve masaüstü uygulamalarında modern web içeriğini görüntülemek için Microsoft Edge (Chromium tabanlı) altyapısını kullanır.
