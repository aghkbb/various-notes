:: Build
:: To generate a docker image using 3 components:
:: 1 - A Dockerfile text file
:: 2 - A build context (folder with source codes and related folders/files)
:: 3 - An image name
docker build -t myrepositoryname/imagename:0.1.0 .

:: Push
:: To upload docker image from local to a 'Docker Registry'
docker push myrepositoryname/imagename:0.1.0

:: Docker Registry
:: A place to store uploaded docker images

:: Pull
:: To download a docker image from the registry to local
docker pull myrepositoryname/imagename:0.1.0


docker build -t greeterimage:0.1.0 .
docker run --name greetercontainer greeterimage:0.1.0
docker tag greeterimage:0.1.0 regulatedrot/greeterimage:0.1.0
docker push regulatedrot/greeter:0.1.0

docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=password -d mysql

docker network create tyf-network
docker run --network tyf-network --name mysql-container -e MYSQL_ROOT_PASSWORD=password -d mysql
docker run -it --network tyf-network --rm mysql mysql -hmysql-container -uroot -p
