開発環境を個別に作りたい場合のDockerFile

docker build -t python-image .  
docker run -d -it -h pydev python-image  
# コンテナへターミナルアクセス
docker attach [container id]  
# 追加プロセスを実行してコンテナへターミナルアクセス
docker exec -it [container id] /bin/bash  
docker start -a [container id]
python3 -m venv [newenvname]  
pip install [module name]
. [newenvname]/bin/activate  
deactivate
