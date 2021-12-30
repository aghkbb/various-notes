
docker network create tyf-network

docker run --network tyf-network --name mysql-container -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d mysql

docker run -it --network tyf-network --rm mysql mysql -hmysql-container -uroot -p

create database db_tuan;

create user 'springuser'@'%' identified by 'ThePassword';

grant all on db_tuan.* to 'springuser'@'%';

curl localhost:8080/meal/add -d food=curry -d location=jurong -d date=tomorrow
curl localhost:8080/meal/add -d food=dimsum -d location=yuhua -d date=16011990

curl localhost:8080/meal/all