# Makefile内容表示
cat:
	$@ ./Makefile

# セットアップ
# up後にconsoleでシェルを実行してテーブルを作成する
# /home/node/medical-expenses/db/schema/init.sh
setup:
	make cli
	make ci dir=frontend
	make ci dir=backend
	make build
	make up

# Angular CLI取得
cli:
	npm un -g @angular/cli
	npm i -g @angular/cli

# Dockerビルド・終了
build \
down:
	docker-compose -f .\.docker\docker-compose.yml $@

# Docker起動・停止
up \
stop:
	docker-compose -f .\.docker\docker-compose.yml $@ $(service)

# Dockerコンソール
console:
	docker exec -it docker_$(service)_1 bash

# アプリケーションライブラリ取得・アップデート
ci \
audit \
update:
	cd ./$(dir) && \
	npm $@

# アプリケーション検証
test \
lint:
	cd ./$(dir) && \
	npm run $@

# アプリケーション起動
start:
	-make stop service=$(dir)
	cd ./$(dir) && \
	npm $@
