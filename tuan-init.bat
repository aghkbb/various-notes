
docker network create tyf-network

docker run --network tyf-network --name mysql-container -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d mysql

docker run -it --network tyf-network --rm mysql mysql -hmysql-container -uroot -p

create database db_tuan;

create user 'springuser'@'%' identified by 'ThePassword';

grant all on db_tuan.* to 'springuser'@'%';

curl localhost:8080/meal/add -d food=curry -d location=jurong -d date=tomorrow
curl localhost:8080/meal/add -d food=dimsum -d location=yuhua -d date=16011990

curl localhost:8080/meal/all

::harden
revoke all on db_example.* from 'springuser'@'%';
grant select, insert, delete, update on db_tuan.* to 'springuser'@'%';
spring.jpa.hibernate.ddl-auto=update

ng new tuan-client
ng generate component meal-list
ng generate component meal-form
mkdir model && cd model
ng generate class meal
mkdir service && cd service
ng generate service meal
