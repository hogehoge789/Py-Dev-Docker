開発環境を個別に作りたい場合のDockerFile

docker build -t python-image .  
docker run -d -it --name py-dev  -h pydev python-image  
# コンテナへターミナルアクセス
docker attach py-dev
# 追加プロセスを実行してコンテナへターミナルアクセス
docker exec -it py-dev /bin/bash  
docker start -a py-dev
python3 -m venv [newenvname]  
pip install [module name]
. [newenvname]/bin/activate  
deactivate
