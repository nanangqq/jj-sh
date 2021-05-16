docker run -it --name nd -p 80:8000 -v $(pwd)/share:/root/share node bash | exit
docker exec -it nd apt update
docker exec -it -w /root/share nd git clone https://github.com/nanangqq/jijuk-cad
docker exec -it -w /root/share nd git clone https://github.com/nanangqq/jijuk-cad-api
docker exec -it -w /root/share/jijuk-cad-api nd cp db_templet.js db.js
echo '************************\ db.js 설정을 변경하세요. /***********************'

