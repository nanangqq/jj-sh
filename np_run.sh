docker run -it --name np -v $(pwd)/share:/root/share nanangqq/np-api-base bash | exit
docker exec -it -w /root/share np git clone https://github.com/nanangqq/np-api
docker exec -it -w /root/share/np-api np sh node_install.sh
docker exec -it -w /root/share/np-api/ np cp db_templet.js db.js
docker exec -it -w /root/share/np-api/python/modules/jjcadpy np git clone https://github.com/nanangqq/jjcadpy .
docker exec -it -w /root/share/np-api/python/modules/jjcadpy np cp db_template.py db.py
echo '******************\ db.py 설정을 수정하세요 / *******************'

