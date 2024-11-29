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

## WebView2 Runtime

