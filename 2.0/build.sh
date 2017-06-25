image_name=kokeiro001/rpi-dotnet
docker build -t $image_name:2.0-runtime-deps  ./runtime-deps/jessie/
docker build -t $image_name:2.0-runtime  ./runtime/jessie/