image_name=kokeiro001/rpi-dotnet
docker build --no-cache=true -t $image_name:2.0-runtime-deps  ./runtime-deps/jessie/
docker build --no-cache=true -t $image_name:2.0-runtime  ./runtime/jessie/
