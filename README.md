# http://www.cnblogs.com/jytx/p/5443181.html
1. Install mysql
docker pull mysql:5.7
docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7
2. Build dzzoffice docker image
docker build -t dzzoffice .
3. Run dzzoffice container
docker run --name dzzoffice --link mysql:mysql -d -p 8181:80 dzzoffice
