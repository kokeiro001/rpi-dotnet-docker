# rpi-dotnet-docker

Raspberry Pi向けの.NET CoreのランタイムのDockerfile置き場。

[kokeiro001/rpi-dotnet - Docker Hub](https://hub.docker.com/r/kokeiro001/rpi-dotnet/)

## 参考、使用イメージなど

- [microsoft/dotnet - Docker Hub](https://hub.docker.com/r/microsoft/dotnet/)
- [dotnet/dotnet-docker: This repo contains the base Docker images for working with .NET Core and the .NET Core Tools.](https://github.com/dotnet/dotnet-docker)
- [dotnet/core-setup: Installer packages for the .NET Core runtime and libraries](https://github.com/dotnet/core-setup/#daily-builds)

## 備考

[arm32向けのSDKが公開されていない](https://github.com/dotnet/cli#installers-and-binaries)ため、ランタイムのみ置いている。
SDKがないため、DLLの作成は別PCなどで行う必要があることに注意(dotnet restoreできない)。


## 使用例


### ホスト側にある「/home/pi/your_dotnetapp/your_dotnetapp.dll」を実行して、プログラムが終了したらコンテナを自動で削除するコマンド

開発時のちょいとしたテスト向け。イメージをビルドし直す必要が無いためサクッと試せるが、ポータビリティは犠牲になる。

```
docker run --rm -v /home/pi/your_dotnetapp/:/root/dotnetapp/ kokeiro001/rpi-dotnet:2.0-runtime dotnet /root/dotnetapp/your_dotnetapp.dll
```

### アプリをコンテナに含めてビルドする手順

TODO. [この辺を参考にする](https://github.com/dotnet/dotnet-docker#run-a-net-core-application-with-the-net-core-runtime-image)

