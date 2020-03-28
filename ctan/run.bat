docker build -t icaotix/latex:minimal --build-arg SOURCE=infraonly --build-arg SCHEME=minimal .
docker build -t icaotix/latex:basic --build-arg SOURCE=minimal --build-arg SCHEME=basic .
docker build -t icaotix/latex:small --build-arg SOURCE=basic --build-arg SCHEME=small .
docker build -t icaotix/latex:context --build-arg SOURCE=small --build-arg SCHEME=context .
docker build -t icaotix/latex:gust --build-arg SOURCE=context --build-arg SCHEME=gust .
docker build -t icaotix/latex:medium --build-arg SOURCE=gust --build-arg SCHEME=medium .
docker build -t icaotix/latex:tetex --build-arg SOURCE=medium --build-arg SCHEME=tetex .
docker build -t icaotix/latex:full --build-arg SOURCE=tetex --build-arg SCHEME=full .