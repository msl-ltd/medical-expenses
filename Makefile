# Makefile内容表示
cat:
	$@ ./Makefile

# セットアップ
setup:
	make cli
	make ci dir=frontend
	make ci dir=backend
	make build

# Angular CLI取得
cli:
	npm un -g @angular/cli
	npm i -g @angular/cli

# Dockerビルド・起動
build \
up \
down \
stop:
	docker-compose -f .\.docker\docker-compose.yml $@ $(service)

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
